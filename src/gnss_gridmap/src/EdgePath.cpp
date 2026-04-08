#include "gnss_gridmap/EdgePath.h"

/**
 * @brief 生成围绕四边形的路径
 * @param filename 包含顶点坐标的文件
 * @param resolution 路径的分辨率（每两个点之间的距离）
 * @param offset 顶点向内偏移的距离
 * @return 生成的路径点序列
 */

std::vector<geometry_msgs::PoseStamped> generatePathAroundPolygon(const std::string& filename, float resolution, float offset, int robot_r) {
    std::vector<geometry_msgs::Point> vertices;
    std::vector<geometry_msgs::PoseStamped> path;
    std::ifstream file(filename);
    std::string line;

    // 读取文件中的点
    while (getline(file, line)) {
        std::stringstream ss(line);
        geometry_msgs::Point point;
        ss >> point.x >> point.y >> point.z;  // 假设文件中包含 x, y, z 坐标
        point.x *= robot_r;
        point.y *= robot_r;
        point.z *= robot_r;
        vertices.push_back(point);
    }

    if (!file.is_open() || vertices.empty()) {
        ROS_ERROR("Failed to read points from file or no points read.");
        return std::vector<geometry_msgs::PoseStamped>();
    }

    // 检查顶点是否重合
    for (size_t i = 0; i < vertices.size(); ++i) {
        for (size_t j = i + 1; j < vertices.size(); ++j) {
            double dx = vertices[i].x - vertices[j].x;
            double dy = vertices[i].y - vertices[j].y;
            double distance = std::sqrt(dx * dx + dy * dy);
            if (distance < 1e-6) {
                ROS_ERROR("Duplicate vertices detected at index %zu and %zu.", i, j);
                return path;
            }
        }
    }

    // 将顶点向内偏移
    std::vector<geometry_msgs::Point> Vertices = offsetVertices(vertices, offset);

    // 遍历每条边，生成路径
    for (size_t i = 0; i < 4; ++i) {
        // 当前边的起点和终点
        geometry_msgs::Point start = Vertices[i];
        geometry_msgs::Point end = Vertices[(i + 1) % 4]; // 循环到第一条边

        // 计算边的长度
        double dx = end.x - start.x;
        double dy = end.y - start.y;
        double edgeLength = std::sqrt(dx * dx + dy * dy);

        // 计算沿边的点数
        int numPoints = static_cast<int>(edgeLength / resolution);

        // 沿边插值生成路径点
        for (int j = 0; j <= numPoints; ++j) {
            double ratio = static_cast<double>(j) / numPoints;
            geometry_msgs::PoseStamped poseStamped;
            poseStamped.header.stamp = ros::Time::now(); // 使用当前时间戳，或根据需要调整

            geometry_msgs::Point point;
            point.x = start.x + ratio * dx;
            point.y = start.y + ratio * dy;
            point.z = 0; // 假设在二维平面

            // 设置位置
            poseStamped.pose.position.x = point.x;
            poseStamped.pose.position.y = point.y;
            poseStamped.pose.position.z = point.z;

            // 设置方向为单位四元数（无旋转）
            tf2::Quaternion quaternion;
            quaternion.setRPY(0, 0, 0); // 绕X, Y, Z轴的旋转角度为0
            poseStamped.pose.orientation.x = quaternion.x();
            poseStamped.pose.orientation.y = quaternion.y();
            poseStamped.pose.orientation.z = quaternion.z();
            poseStamped.pose.orientation.w = quaternion.w();

            path.push_back(poseStamped);
        }
    }

    // 删除最后 10 个点
    if (path.size() > 10) {
        path.erase(path.end() - 10, path.end());
    }

    return path;
}

/**
 * @brief 计算角平分线方向
 * @param prev 前一个顶点
 * @param current 当前顶点
 * @param next 下一个顶点
 * @return 角平分线方向（单位向量）
 */
geometry_msgs::Point calculateBisectorDirection(const geometry_msgs::Point& prev, const geometry_msgs::Point& current, const geometry_msgs::Point& next) {
    // 计算两条邻边的方向向量
    geometry_msgs::Point dir1, dir2;
    dir1.x = prev.x - current.x;
    dir1.y = prev.y - current.y;
    dir2.x = next.x - current.x;
    dir2.y = next.y - current.y;

    // 检查邻边长度是否为 0
    double length1 = std::sqrt(dir1.x * dir1.x + dir1.y * dir1.y);
    double length2 = std::sqrt(dir2.x * dir2.x + dir2.y * dir2.y);

    if (length1 < 1e-6 || length2 < 1e-6) {
        ROS_ERROR("Invalid edge length (near zero) at vertex (%f, %f)", current.x, current.y);
        geometry_msgs::Point invalid;
        invalid.x = 0.0;
        invalid.y = 0.0;
        return invalid;
    }

    // 归一化方向向量
    dir1.x /= length1;
    dir1.y /= length1;
    dir2.x /= length2;
    dir2.y /= length2;

    // 计算角平分线方向
    geometry_msgs::Point bisector;
    bisector.x = (dir1.x + dir2.x);
    bisector.y = (dir1.y + dir2.y);

    // 检查角平分线长度是否为 0
    double bisectorLength = std::sqrt(bisector.x * bisector.x + bisector.y * bisector.y);
    if (bisectorLength < 1e-6) {
        // 如果角平分线方向为零向量，选择垂直方向
        bisector.x = -dir1.y;  // 垂直于 dir1
        bisector.y = dir1.x;
        bisectorLength = std::sqrt(bisector.x * bisector.x + bisector.y * bisector.y);
    }

    // 归一化角平分线方向
    bisector.x /= bisectorLength;
    bisector.y /= bisectorLength;

    return bisector;
}

/**
 * @brief 将顶点沿角平分线方向向内偏移
 * @param vertices 原始顶点
 * @param offset 偏移距离
 * @return 偏移后的顶点
 */
std::vector<geometry_msgs::Point> offsetVertices(const std::vector<geometry_msgs::Point>& vertices, float offset) {
    std::vector<geometry_msgs::Point> offsetVertices;

    // 检查顶点数量是否足够
    if (vertices.size() < 3) {
        ROS_ERROR("At least 3 vertices are required for offsetting.");
        return offsetVertices;
    }

    for (size_t i = 0; i < vertices.size(); ++i) {
        // 获取当前顶点及其相邻顶点
        const geometry_msgs::Point& prev = vertices[(i + vertices.size() - 1) % vertices.size()];
        const geometry_msgs::Point& current = vertices[i];
        const geometry_msgs::Point& next = vertices[(i + 1) % vertices.size()];

        // 计算角平分线方向
        geometry_msgs::Point bisector = calculateBisectorDirection(prev, current, next);

        // 检查角平分线方向是否有效
        if (std::isnan(bisector.x) || std::isnan(bisector.y)) {
            ROS_ERROR("Invalid bisector direction at vertex %zu. Skipping offset.", i);
            offsetVertices.push_back(current); // 保持原始顶点
            continue;
        }

        // 沿角平分线方向偏移
        geometry_msgs::Point offsetPoint;
        offsetPoint.x = current.x + bisector.x * offset;
        offsetPoint.y = current.y + bisector.y * offset;
        offsetPoint.z = 0; // 假设在二维平面

        // 检查偏移后的点是否有效
        if (std::isnan(offsetPoint.x) || std::isnan(offsetPoint.y)) {
            ROS_ERROR("Invalid offset point at vertex %zu. Skipping offset.", i);
            offsetVertices.push_back(current); // 保持原始顶点
            continue;
        }

        // 将偏移后的点添加到结果中
        offsetVertices.push_back(offsetPoint);
    }

    return offsetVertices;
}



