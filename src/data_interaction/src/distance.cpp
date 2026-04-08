#include "distance.h"
#include "ros/ros.h"

std::vector<PlanePoint> batchLatLonToPlane(const std::vector<LatLonPoint>& latlon_points) {
    std::vector<PlanePoint> plane_points;
    if (latlon_points.empty()) return plane_points;

    // 以第一个点为原点，计算其他点的相对坐标
    LatLonPoint origin = latlon_points[0];
    double origin_lat_rad = origin.lat * M_PI / 180.0;  // 原点纬度（弧度）

    for (const auto& ll : latlon_points) {
        // 1. 纬度差 → y坐标（南北方向，每度距离固定）
        double delta_lat_rad = (ll.lat - origin.lat) * M_PI / 180.0;
        double y = delta_lat_rad * EARTH_RADIUS;

        // 2. 经度差 → x坐标（东西方向，受原点纬度影响）
        double delta_lon_rad = (ll.lon - origin.lon) * M_PI / 180.0;
        double x = delta_lon_rad * EARTH_RADIUS * cos(origin_lat_rad);

        plane_points.push_back({x, y});
    }
    return plane_points;
}

/**
 * 计算叉积（a→b 与 a→c 的叉积，判断点的位置关系）
 */
double crossProduct(const PlanePoint& a, const PlanePoint& b, const PlanePoint& c) {
    return (b.x - a.x) * (c.y - a.y) - (b.y - a.y) * (c.x - a.x);
}

/**
 * 计算两点间距离（凸包排序用）
 */
double distance(const PlanePoint& a, const PlanePoint& b) {
    return sqrt(pow(a.x - b.x, 2) + pow(a.y - b.y, 2));
}

/**
 * Graham扫描法提取凸包（支持任意多顶点，返回逆时针排序的凸包顶点）
 */
std::vector<PlanePoint> grahamConvexHull(const std::vector<PlanePoint>& points) {
    // 点数量≤3时，本身就是凸的，直接返回
    if (points.size() <= 3) return points;

    std::vector<PlanePoint> hull_points = points;
    // 1. 找基准点p0（y最小，y相同则x最小）
    auto p0_it = std::min_element(hull_points.begin(), hull_points.end(),
        [](const PlanePoint& a, const PlanePoint& b) {
            return (a.y != b.y) ? (a.y < b.y) : (a.x < b.x);
        });
    std::swap(hull_points[0], *p0_it);
    PlanePoint p0 = hull_points[0];

    // 2. 按极角逆时针排序（共线点保留远的）
    std::sort(hull_points.begin() + 1, hull_points.end(),
        [&p0](const PlanePoint& a, const PlanePoint& b) {
            double cross = crossProduct(p0, a, b);
            if (cross != 0) return cross > 0;  // 极角小的在前
            return distance(p0, a) < distance(p0, b);  // 共线点近的在前（后续去重）
        });

    // 3. 栈维护凸包（删除凹点）
    std::vector<PlanePoint> convex_hull;
    convex_hull.push_back(hull_points[0]);
    convex_hull.push_back(hull_points[1]);

    for (size_t i = 2; i < hull_points.size(); ++i) {
        while (convex_hull.size() >= 2) {
            PlanePoint p1 = convex_hull[convex_hull.size() - 2];
            PlanePoint p2 = convex_hull[convex_hull.size() - 1];
            PlanePoint p3 = hull_points[i];
            // 凹角或共线，删除中间点p2
            if (crossProduct(p1, p2, p3) <= EPS) {
                convex_hull.pop_back();
            } else {
                break;
            }
        }
        convex_hull.push_back(hull_points[i]);
    }

    return convex_hull;
}

/**
 * 判断点是否在凸多边形内（支持任意凸n边形，顶点逆时针排序）
 */
bool isPointInConvexPolygon(const std::vector<PlanePoint>& convex_hull, const PlanePoint& p) {
    for (size_t i = 0; i < convex_hull.size(); ++i) {
        size_t j = (i + 1) % convex_hull.size();
        // 凸多边形顶点逆时针，点在外部时叉积为负（误差允许EPS）
        if (crossProduct(convex_hull[i], convex_hull[j], p) < -EPS) {
            return false;
        }
    }
    return true;
}

/**
 * 判断矩形是否在凸多边形内（轴对齐，边平行于x/y轴）
 */
bool isRectangleInConvexPolygon(const std::vector<PlanePoint>& convex_hull,
                                double x_min, double y_min, double w, double h) {
    // 矩形的4个顶点
    PlanePoint p1 = {x_min, y_min};          // 左下
    PlanePoint p2 = {x_min + w, y_min};      // 右下
    PlanePoint p3 = {x_min + w, y_min + h};  // 右上
    PlanePoint p4 = {x_min, y_min + h};      // 左上

    // 4个顶点均在凸多边形内，矩形才有效
    return isPointInConvexPolygon(convex_hull, p1) &&
           isPointInConvexPolygon(convex_hull, p2) &&
           isPointInConvexPolygon(convex_hull, p3) &&
           isPointInConvexPolygon(convex_hull, p4);
}


// -------------------------- 核心函数：仅获取最大矩形的长宽 --------------------------
/**
 * 从多经纬度坐标包裹的区域内，求解最大轴对齐矩形的长宽
 * @param latlon_points 输入的多经纬度点（无顺序要求，数量≥3）
 * @param[out] max_rect_w 输出：最大矩形的长度（米，东向，x方向）
 * @param[out] max_rect_h 输出：最大矩形的宽度（米，北向，y方向）
 * @return true：计算成功，false：计算失败（如点共线、点数量不足）
 */
bool getMaxRectangleDimensions(const std::vector<LatLonPoint>& latlon_points,
                               double& max_rect_w, 
                               double& max_rect_h) {
    if (latlon_points.size() < 2) {
        ROS_ERROR("经纬度点数量不足（至少需要2个）");
        return false;
    }

    // 1. 经纬度转平面坐标（米）
    const double EARTH_RADIUS = 6378137.0;  // 地球半径（米）
    const double DEG_TO_RAD = M_PI / 180.0;

    // 原点坐标（第一个点）
    double origin_lat = latlon_points[0].lat;
    double origin_lon = latlon_points[0].lon;
    double origin_lat_rad = origin_lat * DEG_TO_RAD;  // 转为弧度
    double origin_lon_rad = origin_lon * DEG_TO_RAD;

    std::vector<std::pair<double, double>> xy_points;

    for (const auto& p : latlon_points) {
        // 计算与原点的经纬度差（度）
        double dlat_deg = p.lat - origin_lat;
        double dlon_deg = p.lon - origin_lon;

        // 转为弧度
        double dlat_rad = dlat_deg * DEG_TO_RAD;
        double dlon_rad = dlon_deg * DEG_TO_RAD;

        // 计算平面坐标（米）
        double x = EARTH_RADIUS * dlon_rad * cos(origin_lat_rad);  // 关键：×cos(原点纬度)
        double y = EARTH_RADIUS * dlat_rad;

        xy_points.emplace_back(x, y);
    }

    // 打印平面坐标（验证转换是否正确）
    ROS_INFO("经纬度转平面坐标：");
    for (size_t i = 0; i < xy_points.size(); ++i) {
        ROS_INFO("  点%d: x=%.2f米, y=%.2f米", i+1, xy_points[i].first, xy_points[i].second);
    }

    // 2. 计算x和y的最大/最小值
    double x_min = xy_points[0].first;
    double x_max = xy_points[0].first;
    double y_min = xy_points[0].second;
    double y_max = xy_points[0].second;

    for (const auto& xy : xy_points) {
        x_min = std::min(x_min, xy.first);  // 取最小x
        x_max = std::max(x_max, xy.first);  // 取最大x
        y_min = std::min(y_min, xy.second); // 取最小y
        y_max = std::max(y_max, xy.second); // 取最大y
    }

    // 3. 计算宽高
    max_rect_w = x_max - x_min;  // 宽度（x方向）
    max_rect_h = y_max - y_min;  // 高度（y方向）

    ROS_INFO("平面坐标极值：x_min=%.2f, x_max=%.2f → 宽=%.2f米", x_min, x_max, max_rect_w);
    ROS_INFO("平面坐标极值：y_min=%.2f, y_max=%.2f → 高=%.2f米", y_min, y_max, max_rect_h);

    return true;
}

bool replaceFileValues(const std::string& file_path, 
                       int row_idx, int col_idx, int new_value) 
{
    std::ifstream in_file(file_path);
    if (!in_file.is_open()) {
        ROS_ERROR("无法打开文件: %s", file_path.c_str());
        return false;
    }

    std::vector<std::string> lines;
    std::string line;
    // 逐行读取文件内容
    while (std::getline(in_file, line)) {
        lines.push_back(line);
    }
    in_file.close();

    // 检查行索引是否有效
    if (row_idx < 0 || row_idx >= lines.size()) {
        ROS_ERROR("行索引 %d 超出范围（文件共 %zu 行）", row_idx, lines.size());
        return false;
    }

    std::istringstream iss(lines[row_idx]);
    std::vector<std::string> tokens;
    std::string token;
    // 分割目标行的内容为token
    while (iss >> token) {
        tokens.push_back(token);
    }

    // 检查列索引是否有效
    if (col_idx < 0 || col_idx >= tokens.size()) {
        ROS_ERROR("列索引 %d 超出范围（该行共 %zu 列）", col_idx, tokens.size());
        return false;
    }

    // 替换目标位置的内容
    tokens[col_idx] = std::to_string(new_value);

    // 重新拼接该行内容
    std::ostringstream oss;
    for (size_t i = 0; i < tokens.size(); ++i) {
        oss << tokens[i];
        if (i < tokens.size() - 1) oss << " ";
    }
    lines[row_idx] = oss.str();

    // 重写文件
    std::ofstream out_file(file_path);
    if (!out_file.is_open()) {
        ROS_ERROR("无法写入文件: %s", file_path.c_str());
        return false;
    }
    for (const auto& l : lines) {
        out_file << l << std::endl;
    }
    out_file.close();

    ROS_INFO("成功替换文件 %s 第 %d 行第 %d 列的值为 %d", 
             file_path.c_str(), row_idx, col_idx, new_value);
    return true;
}