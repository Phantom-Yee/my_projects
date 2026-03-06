#include "gnss_gridmap/localization.h"

bool g_is_rotating = true;



Gnss::Gnss(){
    map_pub             = nh.advertise<nav_msgs::OccupancyGrid>("/map",10,true);
    path_pub            = nh.advertise<nav_msgs::Path>("/plan_path",10,true);
    edge_path_pub       = nh.advertise<nav_msgs::Path>("/edge_path",10,true);
    task_point_pub      = nh.advertise<nav_msgs::Path>("/task_point",10,true);
    edge_task_point_pub = nh.advertise<nav_msgs::Path>("/edge_task_point",10,true);
    // // road_lane_sub = nh.subscribe("/road_lane", 1, &Gnss::roadLaneCallback,this);
    // rob_cur_pose  = nh.subscribe("/cur_pose_all", 1 , &Gnss::CurPoseSDRecvd, this);
    // rob_nav_data  = nh.subscribe("/navi_msg", 1 , &Gnss::onNaviMsgRecvd, this);

    path_pattern_ = "contour_spiral";
    use_custom_boundary_ = false;
    boundary_points_str_ = "";
    contour_spacing_ = 2.0;
    min_optimization_factor_ = 0.3;
    connection_step_factor_ = 0.5;
    min_layer_area_ratio_ = 0.1;
    max_contour_layers_ = 1000;
}


void Gnss::CurPoseSDRecvd(const custom_msgs::CurPose::ConstPtr &msg) {
    std::lock_guard<std::mutex> lock(data_mutex);
    cur_pose = *msg;

}

void Gnss::onNaviMsgRecvd(const custom_msgs::NaviData::ConstPtr &msg){
    std::lock_guard<std::mutex> lock(data_mutex);
    ros_navi_data = *msg;
}


//创建 ROS::OccupancyGrid 消息
nav_msgs::OccupancyGrid Gnss::createOccupancyGrid(const std::vector<std::vector<bool>>& grid_map, float resolution){

    nav_msgs::OccupancyGrid occupancy_grid;
    if(grid_map.empty() || grid_map[0].empty()){
        ROS_ERROR("Received empty grid map");
        return occupancy_grid;
    }
    occupancy_grid.header.frame_id = "map";
    occupancy_grid.header.stamp = ros::Time::now();

    occupancy_grid.info.resolution = resolution;  // 每个栅格的分辨率，单位为米
    occupancy_grid.info.width = grid_map[0].size(); // 地图宽度，单位为栅格数
    occupancy_grid.info.height = grid_map.size();    // 地图高度，单位为栅格数

    // 设置地图的起始位置
    occupancy_grid.info.origin.position.x = pose.pose.position.x;
    occupancy_grid.info.origin.position.y = pose.pose.position.y;
    occupancy_grid.info.origin.position.z = 0;
    occupancy_grid.info.origin.orientation.x = pose.pose.orientation.x;
    occupancy_grid.info.origin.orientation.y = pose.pose.orientation.y;
    occupancy_grid.info.origin.orientation.z = pose.pose.orientation.z;
    occupancy_grid.info.origin.orientation.w = pose.pose.orientation.w;

    // 将二维栅格地图展平成一维数组
    occupancy_grid.data.resize(occupancy_grid.info.width * occupancy_grid.info.height);
    for (size_t y = 0; y < grid_map.size(); y++) {
        for (size_t x = 0; x < grid_map[y].size(); x++) {
            occupancy_grid.data[y * occupancy_grid.info.width + x] = grid_map[y][x];
        }
    }
    return occupancy_grid;
}


void Gnss::processCoordinates(const std::string &inputFilePath, const std::string &outputFilePath)
{
    // 读取经纬度数据
    std::vector<Coordinate> coordinates;
    std::ifstream inputFile(inputFilePath);
    std::string line;

    while (std::getline(inputFile, line)) {
        std::istringstream iss(line);
        double lon, lat;
        if (iss >> lon >> lat) {  // 使用空格分隔
            coordinates.push_back({lon, lat});
        }
    }

    if (coordinates.empty()) {
        std::cerr << "输入文件为空或格式错误！" << std::endl;
        return;
    }

    // 以第一个点为原点，计算其他点的xyz坐标
    double originLon = coordinates[0].lon;
    double originLat = coordinates[0].lat;
    const double earthRadius = 6371000.0; // 地球半径（单位：米）

    std::vector<std::tuple<double, double, double>> xyzCoordinates;
    for (const auto& coord : coordinates) {
        double y = (coord.lon - originLon) * (M_PI / 180.0) * earthRadius * std::cos(originLat * M_PI / 180.0);
        double x = (coord.lat - originLat) * (M_PI / 180.0) * earthRadius;
        double z = 0.0;  // z坐标默认为0
        xyzCoordinates.push_back({x, y, z});
    }

    // 保存xyz坐标到输出文件
    std::ofstream outputFile(outputFilePath);
    for (const auto& xyz : xyzCoordinates) {
        outputFile << std::get<0>(xyz) << " " << std::get<1>(xyz) << " " << std::get<2>(xyz) << "\n";
    }

    // std::cout << "处理完成，结果已保存到 " << outputFilePath << std::endl;
}


vector<vector<bool>> Gnss::generateGridMapFromFile(const string& filename) {
    // processCoordinates(jinweidu_file,filename);

    vector<geometry_msgs::Point> points;
    ifstream file(filename);
    string line;

    // 读取文件中的点
    while (getline(file, line)) {
        stringstream ss(line);
        geometry_msgs::Point point;
        ss >> point.x >> point.y >> point.z;  // 假设文件中包含 x, y, z 坐标
        points.push_back(point);
    }

    if (points.empty()) {
        ROS_ERROR("No valid points found in file.");
        return{}; // 或者提供默认的 grid
    }

    // 找到最小和最大 x, y 值，作为栅格的边界
    double minX = points[0].x, maxX = points[0].x;
    double minY = points[0].y, maxY = points[0].y;

    for (const auto& point : points) {
        minX = min(minX, point.x);
        maxX = max(maxX, point.x);
        minY = min(minY, point.y);
        maxY = max(maxY, point.y);
    }

    // 计算栅格的宽度和高度task_point_pub
    int gridWidth = static_cast<int>(maxX - minX) / robot_Radius;  // +1 确保包含最大值
    int gridHeight = static_cast<int>(maxY - minY) / robot_Radius; // +1 确保包含最大值

    // 创建一个初始化为 false 的二维栅格
    vector<vector<bool>> grid(gridHeight, vector<bool>(gridWidth, false));

    // 返回生成的栅格地图
    return grid;
}

std::string Gnss::convertBoundaryLatLonToMeters(const std::string& boundary_str) {
    if (boundary_str.empty()) return "";

    std::vector<Coordinate> coordinates;
    std::stringstream ss(boundary_str);
    std::string token;

    // 解析输入字符串 "lon,lat;lon,lat..."
    while (std::getline(ss, token, ';')) {
        // 去除可能的空白字符
        token.erase(0, token.find_first_not_of(" \t\n\r"));
        token.erase(token.find_last_not_of(" \t\n\r") + 1);
        
        if (token.empty()) continue;

        std::stringstream point_ss(token);
        std::string lon_str, lat_str;
        if (std::getline(point_ss, lon_str, ',') && std::getline(point_ss, lat_str, ',')) {
            try {
                double lon = std::stod(lon_str);
                double lat = std::stod(lat_str);
                coordinates.push_back({lon, lat});
            } catch (...) {
                ROS_WARN("Failed to parse coordinate: %s", token.c_str());
            }
        }
    }

    if (coordinates.empty()) return boundary_str;

    // 打印第一个点以便调试
    ROS_INFO("First coordinate: Lon=%.9f, Lat=%.9f", coordinates[0].lon, coordinates[0].lat);

    // 检查是否已经是米级坐标 (假设经纬度必须在 [-180, 180] 和 [-90, 90] 之间)
    // 注意：如果手动转换后的米级坐标很小（例如 0,0），这个检查会失效并导致二次转换。
    // 为了安全，我们假设如果第一个点的绝对值大于 180，肯定是米级。
    // 如果小于 180，且看起来像经纬度（比如 lon > 100, lat > 20），我们才转换。
    // 这是一个权宜之计。更好的做法是增加一个参数 explicitly 告诉函数是否需要转换。
    
    bool is_meters = false;
    if (std::abs(coordinates[0].lon) > 180.0 || std::abs(coordinates[0].lat) > 90.0) {
        is_meters = true;
    } 
    // 针对中国区域的启发式检查：如果 Lon < 70 或 Lat < 3，不太可能是中国的经纬度，可能是局部米级坐标
    else if (std::abs(coordinates[0].lon) < 1.0 && std::abs(coordinates[0].lat) < 1.0) {
        // 极小值，很可能是 (0,0) 原点
        is_meters = true;
    }

    if (is_meters) {
        ROS_INFO("Boundary points seem to be already in meters. Skipping conversion.");
        return boundary_str;
    }

    double originLon = coordinates[0].lon;
    double originLat = coordinates[0].lat;
    
    // 使用用户提供的 trans_pose_gps2coord 逻辑
    // 需要实现 distance_gps 和 direction_gps 的简化版本（或者直接用数学公式）
    
    // 辅助 lambda 函数：计算两点间距离 (distance_gps)
    auto distance_gps = [](double lon1, double lat1, double lon2, double lat2) -> double {
        const double R = 6371000.0;
        double dLat = (lat2 - lat1) * M_PI / 180.0;
        double dLon = (lon2 - lon1) * M_PI / 180.0;
        double a = std::sin(dLat/2) * std::sin(dLat/2) +
                   std::cos(lat1 * M_PI / 180.0) * std::cos(lat2 * M_PI / 180.0) *
                   std::sin(dLon/2) * std::sin(dLon/2);
        double c = 2 * std::atan2(std::sqrt(a), std::sqrt(1-a));
        return R * c;
    };
    
    // 辅助 lambda 函数：计算方位角 (direction_gps, 相对真北)
    // 返回角度 (0-360)
    auto direction_gps = [](double lon1, double lat1, double lon2, double lat2) -> double {
        double dLon = (lon2 - lon1) * M_PI / 180.0;
        double y = std::sin(dLon) * std::cos(lat2 * M_PI / 180.0);
        double x = std::cos(lat1 * M_PI / 180.0) * std::sin(lat2 * M_PI / 180.0) -
                   std::sin(lat1 * M_PI / 180.0) * std::cos(lat2 * M_PI / 180.0) * std::cos(dLon);
        double brng = std::atan2(y, x) * 180.0 / M_PI;
        return std::fmod((brng + 360.0), 360.0);
    };

    std::stringstream result_ss;
    result_ss.precision(4);
    result_ss << std::fixed;

    ROS_INFO("Converting Lat/Lon to Meters using GPS Logic. Origin: (%.9f, %.9f)", originLon, originLat);

    for (size_t i = 0; i < coordinates.size(); ++i) {
        double point_dis = distance_gps(originLon, originLat, coordinates[i].lon, coordinates[i].lat);
        double angle = direction_gps(originLon, originLat, coordinates[i].lon, coordinates[i].lat);
        
        // 转换角度：真北方向夹角转地图坐标系
        // angle = ((angle >= 0) && (angle < 90)) ? 90 - angle : 450 - angle;
        // 简化写法：
        angle = 90.0 - angle;
        if (angle < 0) angle += 360.0;
        
        double angle_rad = angle * M_PI / 180.0;
        
        double x = point_dis * std::cos(angle_rad); // x轴分量
        double y = point_dis * std::sin(angle_rad); // y轴分量
        
        // 四舍五入取整
        int x_int = static_cast<int>(std::round(x));
        int y_int = static_cast<int>(std::round(y));
        
        // 输出整数格式 "x,y"
        result_ss << x_int << "," << y_int;
        if (i < coordinates.size() - 1) {
            result_ss << ";";
        }
        
        ROS_INFO("  Point %zu: (%.4f, %.4f) -> (%d, %d)", i, x, y, x_int, y_int);
    }

    std::string result = result_ss.str();
    // ROS_INFO("Converted String: %s", result.c_str());
    return result;
}


bool Gnss::setbeginparameter(){
    std::string start_pose;
    ros::param::get("~start_pose", start_pose);
    ros::param::get("~robot_radius", robot_Radius);
    ros::param::get("~tool_radius", tool_Radius);
    ros::param::get("~resolution", resolution);
    ros::param::get("~division_value", division_value);
    ros::param::get("~offset_angel", offset_angel);
    ros::param::get("~map_file", map_file); //地图文件
    ros::param::get("~path_file", path_file);  //覆盖式路径文件
    ros::param::get("~edgepath_file", edgepath_file);  //边沿路径文件
    ros::param::get("~jinweidu_file", jinweidu_file);  //经纬度地图文件
    ros::param::get("~task_point_file", task_point_file);  //任务点文件

    ros::param::get("~BoustrophedonSTC/path_pattern", path_pattern_);
    ros::param::get("~BoustrophedonSTC/use_custom_boundary", use_custom_boundary_);
    ros::param::get("~BoustrophedonSTC/boundary_points", boundary_points_str_);
    ros::param::get("~BoustrophedonSTC/contour_spacing", contour_spacing_);
    ros::param::get("~BoustrophedonSTC/min_optimization_factor", min_optimization_factor_);
    ros::param::get("~BoustrophedonSTC/connection_step_factor", connection_step_factor_);
    ros::param::get("~BoustrophedonSTC/min_layer_area_ratio", min_layer_area_ratio_);
    ros::param::get("~BoustrophedonSTC/max_contour_layers", max_contour_layers_);

    std::stringstream ss(start_pose);
    {
        ss >> pose.pose.position.x >> pose.pose.position.y >> pose.pose.position.z;
        originx = pose.pose.position.x;
        originy = pose.pose.position.y;
        ss >> roll >> pitch >> yaw;
        tf2::Quaternion q;
        roll = roll * M_PI / 180.0;
        pitch = pitch * M_PI / 180.0;
        std::cout<<"orientation yaw:"<< (-yaw + offset_angel) <<std::endl;
        yaw = (-yaw + offset_angel) * M_PI / 180.0;
        q.setRPY(roll, pitch, yaw);
        pose.header.frame_id = "map";
        pose.header.stamp = ros::Time::now();
        pose.pose.orientation.x = q.x();
        pose.pose.orientation.y = q.y();
        pose.pose.orientation.z = q.z();
        pose.pose.orientation.w = q.w();
    } 
    return true;
}

void Gnss::PathGenerate(){

    std::lock_guard<std::mutex> lock(path_mutex);

    if (!setbeginparameter()) {
        ROS_ERROR("PathGenerate init failed");
        return;
        }
    plan.clear();                        
    grid.clear(); 

    //根据文档创建空栅格地图
    initializer_grid = generateGridMapFromFile(map_file);
    //将占用网格转换为二进制矩阵  这个函数是带机器人尺寸约束的
    ros_map = createOccupancyGrid(initializer_grid,resolution);
    map_pub.publish(ros_map);
    Point_t sceal;
    planner.parseGrid(ros_map, grid, robot_Radius, tool_Radius ,pose, sceal);
    planner.setRobotParams(robot_Radius, tool_Radius);
    
    // 转换边界点坐标 (Lat/Lon -> Meters)
    std::string converted_boundary = boundary_points_str_;
    if (use_custom_boundary_) {
        converted_boundary = convertBoundaryLatLonToMeters(boundary_points_str_);
    }

    // Configure planner parameters directly
    planner.setContourSpiralParameters(path_pattern_,
                                      use_custom_boundary_,
                                      converted_boundary,
                                      contour_spacing_,
                                      min_optimization_factor_,
                                      connection_step_factor_,
                                      min_layer_area_ratio_,
                                      max_contour_layers_,
                                      resolution); // 传入分辨率

    if (path_pattern_ == "contour_spiral") {
        PathGenerateContourSpiral();
        return;
    }

    //生成boustrophedon的路径规划路线
    int multiple_pass_counter, visited_counter;
    path = planner.boustrophedon_stc(
        grid, sceal, multiple_pass_counter, visited_counter);
    if (path.empty()) {
        ROS_WARN("Path is empty, skipping publishing");
        return;
    }

    plan.reserve(path.size());
    planner.parsePointlist2Plan(pose, path, plan);

    auto pathMsg = nav_msgs::Path();
    pathMsg.header.frame_id = "map";
    pathMsg.header.stamp = ros::Time::now();

    //旋转之后的覆盖式路径
    pathMsg.poses.clear();


    
    if (path_pattern_ == "contour_spiral" && use_custom_boundary_) {
        // 创建一个零位姿，仅保留分辨率缩放功能
        geometry_msgs::PoseStamped zero_pose;
        zero_pose.header = pose.header;
        zero_pose.pose.orientation.w = 1.0; 
        // position x,y,z 默认为0
        
        // 使用零位姿进行解析，这样 (x*res, y*res) 就会直接作为结果，不再平移旋转
        planner.parsePointlist2Plan(zero_pose, path, plan);
        
        // 不需要 rotatePath，因为假设边界点已经是世界坐标系下的
        public_plan = plan;
    } else {
        // 原有逻辑
        planner.parsePointlist2Plan(pose, path, plan);
        public_plan = generateline.rotatePath(plan,yaw,originx,originy);
    }

    pathMsg.poses = public_plan;
    task_point = pathMsg;//存储任务点
    task_point.poses.erase(task_point.poses.begin(), task_point.poses.begin() + 2);
    task_point.poses.erase(task_point.poses.end());
    savePathToFile(task_point,task_point_file);
    public_roadline = generateline.generateInterpolatedPath(pathMsg,division_value);//通过插值生成完整路径点
    public_roadline.header.frame_id = "map";  // 确保完整路径的坐标系正确
    public_roadline.header.stamp = ros::Time::now();
    path_pub.publish(public_roadline);  // 发布覆盖式完整路径
    savePathToFile(public_roadline,path_file);
    saveCoordinatesToDatabase(path_file);

    //边沿路径
    pathMsg.poses.clear();
    edge_plan = generatePathAroundPolygon(map_file,division_value,robot_Radius/2,robot_Radius);
    pathMsg.poses = generateline.rotatePath(edge_plan,yaw,originx,originy);
    edge_roadline = pathMsg;
    savePathToFile(edge_roadline,edgepath_file);
    saveEdgePathToDatabase(edgepath_file);
}

void Gnss::PathGenerateContourSpiral() {



    ROS_INFO("Using Contour Spiral Path Generation (Independent Mode)");
    
    // 1. 设置规划器参数
    // 这里我们依然调用 setContourSpiralParameters 来传入 boundary_points_str 和 resolution
    // 这些参数会被 planner 内部解析和存储
    
    // 转换边界点坐标 (Lat/Lon -> Meters)
    std::string converted_boundary = boundary_points_str_;
    if (use_custom_boundary_) {
        converted_boundary = convertBoundaryLatLonToMeters(boundary_points_str_);
    }
    
    planner.setContourSpiralParameters(path_pattern_,
                                      use_custom_boundary_,
                                      converted_boundary,
                                      contour_spacing_,
                                      min_optimization_factor_,
                                      connection_step_factor_,
                                      min_layer_area_ratio_,
                                      max_contour_layers_,
                                      resolution);

    // 2. 调用新的独立接口，直接获取米级坐标路径
    // 这个接口完全绕过了 grid, visited, sceal 等旧逻辑
    std::vector<geometry_msgs::Point> path_points = planner.getContourSpiralPath();
    
    if (path_points.empty()) {
        ROS_WARN("Contour Spiral Path is empty, skipping publishing");
        return;
    }
    
    // 3. 封装为 nav_msgs::Path
    auto pathMsg = nav_msgs::Path();
    pathMsg.header.frame_id = "map";
    pathMsg.header.stamp = ros::Time::now();
    
    // 假设 boundary_points 是绝对坐标，这里的 path_points 也是绝对坐标
    // 不需要再叠加 pose (start_pose) 的平移和旋转
    for (const auto& pt : path_points) {
        geometry_msgs::PoseStamped pose_stamped;
        pose_stamped.header = pathMsg.header;
        pose_stamped.pose.position = pt;
        pose_stamped.pose.orientation.w = 1.0; // 默认方向，或者根据路径方向计算
        pathMsg.poses.push_back(pose_stamped);
    }
    
    // 保存到 public_plan 成员变量，以便后续可能的用途
    public_plan = pathMsg.poses;
    
    // 4. 处理和保存路径 (保持一致的输出格式)
    
    // 保存任务点 (关键拐点)
    task_point = pathMsg;
    // 根据需求，可能需要移除首尾点或做一些修剪 (参考旧逻辑)
    // if (task_point.poses.size() > 3) {
       // task_point.poses.erase(task_point.poses.begin(), task_point.poses.begin() + 2);
    //    // task_point.poses.erase(task_point.poses.end());
    // }
    task_point.poses.erase(task_point.poses.begin(), task_point.poses.begin() + 2);
    task_point.poses.erase(task_point.poses.end());
    savePathToFile(task_point, task_point_file);
    
    // 生成插值后的完整路径
    // generateInterpolatedPath 需要 pathMsg
    public_roadline = generateline.generateInterpolatedPath(pathMsg, division_value);
    public_roadline.header.frame_id = "map";
    public_roadline.header.stamp = ros::Time::now();
    
    // 发布和保存
    path_pub.publish(public_roadline);
    savePathToFile(public_roadline, path_file);
    saveCoordinatesToDatabase(path_file);
    
    // 5. 边沿路径 (如果需要)
    // 暂时保留旧逻辑，或者根据需求决定是否生成 edge path。
    
    ROS_INFO("Contour Spiral Path Generation Completed. (New Interface)");
}

//发布规划路径到rviz
void Gnss::publishPath() {

    task_point_pub.publish(task_point);//发布拐点路径
    path_pub.publish(public_roadline); //发布覆盖是路径
    edge_path_pub.publish(edge_roadline);//发布边沿路径
    //发布栅格地图
    map_pub.publish(ros_map);
}