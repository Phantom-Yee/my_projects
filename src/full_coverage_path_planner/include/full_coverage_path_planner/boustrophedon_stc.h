//
// Copyright [2020] Nobleo Technology"  [legal/copyright]
//
#include <angles/angles.h>
#include <base_local_planner/costmap_model.h>
#include <base_local_planner/world_model.h>
#include <costmap_2d/costmap_2d.h>
#include <costmap_2d/costmap_2d_ros.h>
#include <fstream>
#include <geometry_msgs/PoseStamped.h>
#include <list>
#include <nav_core/base_global_planner.h>
#include <nav_msgs/GetMap.h>
#include <nav_msgs/Path.h>
#include <pluginlib/class_list_macros.h>
#include <ros/ros.h>
#include <string>
#include <vector>

using std::string;

//?????????? What's this file for again? define the classes?

#ifndef FULL_COVERAGE_PATH_PLANNER_BOUSTROPHEDON_STC_H
#define FULL_COVERAGE_PATH_PLANNER_BOUSTROPHEDON_STC_H

#include "full_coverage_path_planner/full_coverage_path_planner.h"
namespace full_coverage_path_planner
{

struct ContourPoint {
    double x, y;
    
    ContourPoint(double x = 0, double y = 0) : x(x), y(y) {}
    
    // Vector operations
    ContourPoint operator+(const ContourPoint& other) const { return ContourPoint(x + other.x, y + other.y); }
    ContourPoint operator-(const ContourPoint& other) const { return ContourPoint(x - other.x, y - other.y); }
    ContourPoint operator*(double scalar) const { return ContourPoint(x * scalar, y * scalar); }
    double dot(const ContourPoint& other) const { return x * other.x + y * other.y; }
    double cross(const ContourPoint& other) const { return x * other.y - y * other.x; }
    double distance(const ContourPoint& other) const {
        double dx = x - other.x;
        double dy = y - other.y;
        return std::sqrt(dx * dx + dy * dy);
    }
    double length() const { return std::sqrt(x * x + y * y); }
    ContourPoint normalized() const {
        double len = length();
        if (len == 0) return ContourPoint(0, 0);
        return ContourPoint(x / len, y / len);
    }
};

class BoustrophedonSTC : public nav_core::BaseGlobalPlanner, public full_coverage_path_planner::FullCoveragePathPlanner
{
public:
    /**
     * Find a path that does the boustrophedon pattern starting from init until a dead end is reached in the grid
     * @param grid 2D grid of bools. true == occupied/blocked/obstacle  
     * @param init start position  
     * @param visited all the nodes visited by the boustrophedon pattern 记录走过的位置标记为已访问
     * @return list of nodes that form the boustrophedon pattern
     */
    static std::list<gridNode_t> boustrophedon(std::vector<std::vector<bool>> const& grid, std::list<gridNode_t>& init,
                                               std::vector<std::vector<bool>>& visited);

    /**
     * Find a path that does the boustrophedon pattern starting from init until a dead end is reached in the grid
     * @param grid 2D grid of bools. true == occupied/blocked/obstacle  
     * @param init start position  
     * @param visited all the nodes visited by the boustrophedon pattern 记录走过的位置标记为已访问
     * @return list of nodes that form the boustrophedon pattern
     */
    static std::list<gridNode_t> Inner_Spiral_Path(std::vector<std::vector<bool>> const& grid, std::list<gridNode_t>& init,
                                                   std::vector<std::vector<bool>>& visited);

    // ????????? Why is init a list?
    /**有障碍物的boustrophedon算法 结合A*算法的局部路径规划
     * Perform Boustrophedon-STC (Spanning Tree Coverage) coverage path planning.
     * In essence, the robot moves forward until an obstacle or visited node is met, then turns right or left (making a
     * boustrophedon pattern) When stuck in the middle of the boustrophedon, use A* to get out again and start a new
     * boustrophedon, until a* can't find a path to uncovered cells
     * @param grid
     * @param init
     * @return
     */
    std::list<Point_t> boustrophedon_stc(std::vector<std::vector<bool>> const& grid, Point_t& init,
                                                int& multiple_pass_counter, int& visited_counter);

    void setContourSpiralParameters(std::string path_pattern,
                                    bool use_custom_boundary,
                                    std::string boundary_points_str,
                                    double contour_spacing,
                                    double min_optimization_factor,
                                    double connection_step_factor,
                                    double min_layer_area_ratio,
                                    int max_contour_layers,
                                    double map_resolution);

    void setRobotParams(float robot_radius, float tool_radius);
    std::vector<geometry_msgs::Point> getContourSpiralPath();
    

private:
    /**
     * @brief Given a goal pose in the world, compute a plan
     * @param start The start pose
     * @param goal The goal pose
     * @param plan The plan... filled by the planner
     * @return True if a valid plan was found, false otherwise
     */
    // ?????????? How does this work again?
    bool makePlan(const geometry_msgs::PoseStamped& start, const geometry_msgs::PoseStamped& goal,
                  std::vector<geometry_msgs::PoseStamped>& plan);

    // 等高线螺旋路径的参数
    std::string boundary_points_str_;  // 边界点字符串
    std::vector<ContourPoint> custom_boundary_points_;  // 自定义边界点
    bool use_custom_boundary_;  // 是否使用自定义边界点
    double contour_spacing_;  // 等高线间距（w）
    double min_optimization_factor_;  // 最小优化距离因子
    double connection_step_factor_;  // 连接路径步长因子
    double min_layer_area_ratio_;  // 最小层面积比例
    int max_contour_layers_;  // 最大等高线层数
    std::string path_pattern_;  // 路径模式
    
    // 新增的路径生成函数声明
    std::list<gridNode_t> Contour_Spiral_Path(std::vector<std::vector<bool>> const& grid,
                                              std::list<gridNode_t>& init,
                                              std::vector<std::vector<bool>>& visited);

    std::list<gridNode_t> Contour_Boustrophedon_Path(std::vector<std::vector<bool>> const& grid,
                                                     std::list<gridNode_t>& init,
                                                     std::vector<std::vector<bool>>& visited);


    std::vector<ContourPoint> parseBoundaryPoints(const std::string& points_str);
    double map_resolution_; // 存储地图分辨率

    /**
     * @brief  Initialization function for the FullCoveragePathPlanner object
     * 该函数用于初始化 FullCoveragePathPlanner 对象。
     * 它接受一个字符串作为规划器的名称，并使用一个指向 ROS 代价地图包装器（Costmap2DROS）的指针。
     * 通过这个代价地图，规划器可以知道机器人的环境，并在其中生成路径。
     * @param  name The name of this planner
     * @param  costmap A pointer to the ROS wrapper of the costmap to use for planning
     */
    void initialize(std::string name, costmap_2d::Costmap2DROS* costmap_ros);
};

}  // namespace full_coverage_path_planner
#endif  // FULL_COVERAGE_PATH_PLANNER_BOUSTROPHEDON_STC_H
