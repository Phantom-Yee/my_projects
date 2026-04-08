#include <ros/ros.h>
#include <nav_msgs/OccupancyGrid.h>
#include <geometry_msgs/Pose.h>
#include <vector>
#include <iostream>
#include "full_coverage_path_planner/common.h"
#include "full_coverage_path_planner/boustrophedon_stc.h"
#include <tf2/LinearMath/Quaternion.h>
#include <cmath>
#include <set>
#include <stdlib.h>
#include <gtest/gtest.h>
#include <list>
#include <custom_msgs/LaneLine.h>
#include <custom_msgs/LaneLineArray.h>
#include <custom_msgs/NaviData.h>
#include <custom_msgs/CurPose.h>
#include <fstream>
#include <sstream>
#include <geometry_msgs/Point.h>
#include <algorithm>
#include "gnss_gridmap/Point2Line.h"
#include "gnss_gridmap/Path2Postgre.h"
#include "gnss_gridmap/EdgePath.h"


extern bool g_is_rotating;


using namespace std;
//存储经纬度信息的结构体
struct Coordinate {
    double lon;
    double lat;
};

class Gnss{
public:
    Gnss();
    bool setbeginparameter();
    void PathGenerate();

    std::vector<geometry_msgs::Point> readFieldBoundaryFromFile(const std::string& filename);
    bool isPointInField(const geometry_msgs::Point& p, const std::vector<geometry_msgs::Point>& boundary);

    //发布路径到ROS话题
    void publishPath();
    string                             path_file;


public:
    ros::NodeHandle           nh;
    ros::Publisher            map_pub;
    ros::Publisher            path_pub;
    ros::Publisher            task_point_pub;
    ros::Publisher            edge_task_point_pub;
    ros::Publisher            edge_path_pub;
    ros::Subscriber           road_lane_sub;
    ros::Subscriber           rob_cur_pose;
    ros::Subscriber           rob_nav_data;
    vector<std::vector<bool>> initializer_grid; //初始栅格
    vector<std::vector<bool>> grid;
    std::mutex data_mutex;  // 用于多线程安全
    std::mutex path_mutex;   //保护路径生成

    /*----------------------参数定义----------------------*/
    full_coverage_path_planner::BoustrophedonSTC planner;
    Point2Line                                   generateline;

    std::list<Point_t>                path;
    nav_msgs::OccupancyGrid           ros_map;
    geometry_msgs::PoseStamped        pose;      // 机器人起点位姿
    Point_t                           start = {0, 0};

    std::vector<geometry_msgs::Point> refer_points; //保存边界框的容器
    custom_msgs::CurPose              cur_pose;
    custom_msgs::NaviData             ros_navi_data;

    std::vector<geometry_msgs::PoseStamped> plan,public_plan,edge_plan;
    nav_msgs::Path                          public_roadline,edge_roadline,task_point;

    float                              robot_Radius=0;
    float                              tool_Radius=0;
    double                             resolution=0;  //每个栅格的大小，单位为米
    double                             division_value = 0;
    double                             roll, pitch, yaw;
    double                             originx,originy;
    double                             offset_angel;
    float                              offset_vertex;
    string                             map_file;
    // string                             path_file;
    string                             edgepath_file;
    string                             jinweidu_file;
    string                             task_point_file;

    std::string path_pattern_;  // 路径模式: "boustrophedon", "inner_spiral", "contour_spiral"
    bool use_custom_boundary_;  // 是否使用自定义边界点
    std::string boundary_points_str_;  // 自定义边界点字符串
    double contour_spacing_;  // 等高线间距
    double min_optimization_factor_;  // 最小优化距离因子
    double connection_step_factor_;  // 连接路径步长因子
    double min_layer_area_ratio_;  // 最小层面积比例
    int max_contour_layers_;  // 最大等高线层数
    /*----------------------回调函数----------------------*/
    void CurPoseSDRecvd(const custom_msgs::CurPose::ConstPtr &msg);
    void onNaviMsgRecvd(const custom_msgs::NaviData::ConstPtr &msg);


    /*----------------------功能函数----------------------*/
    //设置初始位姿
    vector<vector<bool>> generateGridMapFromFile(const string& filename);
    //创建 ROS::OccupancyGrid 消息
    nav_msgs::OccupancyGrid createOccupancyGrid(const std::vector<std::vector<bool>>& grid_map, float resolution);
    void processCoordinates(const std::string& inputFilePath, const std::string& outputFilePath);
    bool isPointOnEdge(const geometry_msgs::Point& point, const geometry_msgs::Point& edgeStart, 
                       const geometry_msgs::Point& edgeEnd, double tolerance);
    //判断点是否在多边形内
    int isPointInPolygonOrEdge(const geometry_msgs::Point& point, 
                               const std::vector<geometry_msgs::Point>& polygon);
    void PathGenerateContourSpiral();
    std::string convertBoundaryLatLonToMeters(const std::string& boundary_str);



};
