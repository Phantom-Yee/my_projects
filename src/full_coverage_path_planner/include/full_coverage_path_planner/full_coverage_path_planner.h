//
// Copyright [2020] Nobleo Technology"  [legal/copyright]
//
/** include the libraries you need in your planner here */
/** for global path planner interface */
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
#include <tf/tf.h>
#include <vector>

using std::string;

#ifndef FULL_COVERAGE_PATH_PLANNER_FULL_COVERAGE_PATH_PLANNER_H
#define FULL_COVERAGE_PATH_PLANNER_FULL_COVERAGE_PATH_PLANNER_H

#include "full_coverage_path_planner/common.h"

// #define DEBUG_PLOT

#ifndef dabs
#define dabs(a) ((a) >= 0 ? (a) : -(a))
#endif
#ifndef dmin
#define dmin(a, b) ((a) <= (b) ? (a) : (b))
#endif
#ifndef dmax
#define dmax(a, b) ((a) >= (b) ? (a) : (b))
#endif
#ifndef clamp_
#define clamp_(a, lower, upper) dmax(dmin(a, upper), lower)
#endif

enum
{
    eDirNone = 0,
    eDirRight = 1,
    eDirUp = 2,
    eDirLeft = -1,
    eDirDown = -2,
};

namespace full_coverage_path_planner
{
class FullCoveragePathPlanner
{
public:
    /**
     * @brief  Default constructor for the NavFnROS object
     */
    FullCoveragePathPlanner();
    FullCoveragePathPlanner(std::string name, costmap_2d::Costmap2DROS* costmap_ros);

    /**
     * @brief  Publish a path for visualization purposes
     */
    void publishPlan(const std::vector<geometry_msgs::PoseStamped>& path);

    ~FullCoveragePathPlanner() {}

    virtual bool makePlan(const geometry_msgs::PoseStamped& start, const geometry_msgs::PoseStamped& goal,
                          std::vector<geometry_msgs::PoseStamped>& plan) = 0;

public:
    /**
     * Convert internal representation of a to a ROS path 将路径点转化为ROS中的路径
     * @param start Start pose of robot
     * @param goalpoints Goal points from Boustrophedon Algorithm
     * @param plan  Output plan variable
     */
    void parsePointlist2Plan(const geometry_msgs::PoseStamped& start, std::list<Point_t> const& goalpoints,
                             std::vector<geometry_msgs::PoseStamped>& plan);

    /**
     * Convert ROS Occupancy grid to internal grid representation, given the size of a single tile
     * ROS Occupancy Grid（占据网格，costmap_grid_）转换为内部网格表示（grid）。
     * 内部网格用于路径规划，通常表示机器人在环境中的可行区域和障碍物位置。函数还会根据机器人的真实世界位置（realStart）计算并返回在网格中的位置（scaledStart）。
     * @param costmap_grid_ Costmap representation. Cells higher that 65 are considered occupied 占据网格表示
     * @param grid internal map representation 内部的地图形式。转换后的网格将以此形式保存
     * @param tileSize size (in meters) of a cell. This can be the robot's size 单元格大小，单位是米。
     * @param realStart Start position of the robot (in meters) 机器人的起始位置
     * @param scaledStart Start position of the robot on the grid 机器人在内部网格中的起始位置
     * @return success
     */
    bool parseCostmap(costmap_2d::Costmap2D* costmap_grid_, std::vector<std::vector<bool>>& grid, float robotRadius,
                      float toolRadius, geometry_msgs::PoseStamped const& realStart, Point_t& scaledStart);

    /**
     * Convert ROS Occupancy grid to internal grid representation, given the size of a single tile 
     * 将ROS的占据网格（Occupancy Grid）转换为内部布尔网格，并将机器人在真实世界中的起始位置转换为网格坐标。
     * @param cpp_grid_ ROS occupancy grid representation. Cells higher that 65 are considered occupied
     * @param grid internal map representation
     * @param tileSize size (in meters) of a cell. This can be the robot's size
     * @param realStart Start position of the robot (in meters)
     * @param scaledStart Start position of the robot on the grid
     * @return success
     */
    bool parseGrid(nav_msgs::OccupancyGrid const& cpp_grid_, std::vector<std::vector<bool>>& grid, float robotRadius,
                   float toolRadius, geometry_msgs::PoseStamped const& realStart, Point_t& scaledStart);
    ros::Publisher plan_pub_;
    ros::ServiceClient cpp_grid_client_;
    nav_msgs::OccupancyGrid cpp_grid_;
    // Using costmap instead of Occupancy Grid from map server as the costmap updates periodically.
    costmap_2d::Costmap2DROS* costmap_ros_;
    costmap_2d::Costmap2D* costmap_;
    float robot_radius_;
    float tool_radius_;
    float plan_resolution_;
    float tile_size_;
    fPoint_t grid_origin_;
    bool initialized_;
    geometry_msgs::PoseStamped previous_goal_;

    struct boustrophedon_cpp_metrics_type
    {
        int visited_counter;
        int multiple_pass_counter;
        int accessible_counter;
        double total_area_covered;
    };
    boustrophedon_cpp_metrics_type boustrophedon_cpp_metrics_;
};

/**
 * Sort function for sorting Points on distance to a POI
 */
struct ComparatorForPointSort
{
    explicit ComparatorForPointSort(Point_t poi)
        : _poi(poi)
    {
    }

    bool operator()(const Point_t& first, const Point_t& second) const
    {
        return distanceSquared(first, _poi) < distanceSquared(second, _poi);
    }

private:
    Point_t _poi;
};
}  // namespace full_coverage_path_planner
#endif  // FULL_COVERAGE_PATH_PLANNER_FULL_COVERAGE_PATH_PLANNER_H
