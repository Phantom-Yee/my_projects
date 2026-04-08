//
// Copyright [2020] Nobleo Technology"  [legal/copyright]
//
#include "full_coverage_path_planner/full_coverage_path_planner.h"

#include <algorithm>
#include <cmath>
#include <list>
#include <vector>

/*  *** Note the coordinate system ***
 *  grid[][] is a 2D-vector:
 *  ***where ix is column-index and x-coordinate in map,
 *  iy is row-index and y-coordinate in map.
 *
 *            Cols  [ix]
 *        _______________________
 *       |__|__|__|__|__|__|__|__|
 *       |__|__|__|__|__|__|__|__|
 * Rows  |__|__|__|__|__|__|__|__|
 * [iy]  |__|__|__|__|__|__|__|__|
 *       |__|__|__|__|__|__|__|__|
 *y-axis |__|__|__|__|__|__|__|__|
 *   ^   |__|__|__|__|__|__|__|__|
 *   ^   |__|__|__|__|__|__|__|__|
 *   |   |__|__|__|__|__|__|__|__|
 *   |   |__|__|__|__|__|__|__|__|
 *
 *   O   --->> x-axis
 */

// #define DEBUG_PLOT

// Default Constructor
namespace full_coverage_path_planner
{
FullCoveragePathPlanner::FullCoveragePathPlanner()
    : initialized_(false)
{
}

void FullCoveragePathPlanner::publishPlan(const std::vector<geometry_msgs::PoseStamped>& path)
{
    if (!initialized_)
    {
        ROS_ERROR(
            "This planner has not been initialized yet, but it is being used, please call initialize() before use");
        return;
    }

    // create a message for the plan
    nav_msgs::Path gui_path;
    gui_path.poses.resize(path.size());

    //???????????? why do you need to create gui_path AND resize the path size? (to have same size as path.size?)

    if (!path.empty())
    {
        gui_path.header.frame_id = path[0].header.frame_id;
        gui_path.header.stamp = path[0].header.stamp;
    }

    // Extract the plan in world co-ordinates, we assume the path is all in the same frame

    // ????????are moving a "local" plan to the world' coordinate frame here?? how does the publishing process work?
    for (unsigned int i = 0; i < path.size(); i++)
    {
        gui_path.poses[i] = path[i];
    }

    plan_pub_.publish(gui_path);
    //?????????? where does plan_pub_ come from?
}

// void FullCoveragePathPlanner::parsePointlist2Plan(const geometry_msgs::PoseStamped& start,
//                                                   std::list<Point_t> const& goalpoints,
//                                                   std::vector<geometry_msgs::PoseStamped>& plan)
// {
//     // 用于将路径点列表转换为ROS中的导航计划

//     geometry_msgs::PoseStamped new_goal;
//     std::list<Point_t>::const_iterator it, it_next, it_prev;
//     int dx_now, dy_now, dx_next, dy_next;  // 当前点与前后点之间的x/y方向增量
//     int move_dir_now = 0, move_dir_prev = 0, move_dir_next = 0;  // 当前、前一个、下一个点的移动方向
//     bool do_publish = false;  // 标志位，是否需要发布当前点
//     float orientation = eDirNone;  // 当前点的朝向初始化为无方向
//     // ROS_INFO("Received goalpoints with length: %lu", goalpoints.size());

//     if (goalpoints.size() > 1)  // 如果路径点数量大于1
//     {
//         for (it = goalpoints.begin(); it != goalpoints.end(); ++it)  // 遍历路径点
//         {
//             it_next = it;
//             it_next++;  // 下一个点
//             it_prev = it;
//             it_prev--;  // 前一个点

//             // 检查当前的移动方向
//             if (it == goalpoints.begin())  // 如果是起始点
//             {
//                 dx_now = it_next->x - it->x;  // 起点到下一个点的x增量
//                 dy_now = it_next->y - it->y;  // 起点到下一个点的y增量
//             }
//             else
//             {
//                 dx_now = it->x - it_prev->x;  // 当前点到前一个点的x增量
//                 dy_now = it->y - it_prev->y;  // 当前点到前一个点的y增量
//                 dx_next = it_next->x - it->x;  // 当前点到下一个点的x增量
//                 dy_next = it_next->y - it->y;  // 当前点到下一个点的y增量
//             }

//             // 计算当前移动方向的枚举值（dx + dy * 2）
//             move_dir_now = dx_now + dy_now * 2;  // 当前方向
//             move_dir_next = dx_next + dy_next * 2;  // 下一个方向

//             // 检查是否需要发布当前点（即方向改变，或是起点/终点）
//             do_publish = move_dir_next != move_dir_now || it == goalpoints.begin() ||
//                          (it != goalpoints.end() && it == --goalpoints.end());
//             move_dir_prev = move_dir_now;  // 更新前一方向为当前方向

//             // 如果需要发布当前点
//             if (do_publish)
//             {
//                 new_goal.header.frame_id = "map";  // 设置坐标系为地图
//                 new_goal.pose.position.x = (it->x) * tile_size_ + grid_origin_.x + tile_size_ * 0.5;  
//                 new_goal.pose.position.y = (it->y) * tile_size_ + grid_origin_.y + tile_size_ * 0.5;  

//                 // 计算与移动方向一致的朝向
//                 switch (move_dir_now)
//                 {
//                 case eDirNone:
//                     break;  // 方向保持不变
//                 case eDirRight:
//                     orientation = 0;  // 朝右
//                     break;
//                 case eDirUp:
//                     orientation = M_PI / 2;  // 朝上
//                     break;
//                 case eDirLeft:
//                     orientation = M_PI;  // 朝左
//                     break;
//                 case eDirDown:
//                     orientation = M_PI * 1.5;  // 朝下
//                     break;
//                 }
//                 new_goal.pose.orientation = tf::createQuaternionMsgFromYaw(orientation);  // 生成四元数

//                 if (it != goalpoints.begin())  // 如果不是起始点
//                 {
//                     previous_goal_.pose.orientation = new_goal.pose.orientation;
//                     plan.push_back(previous_goal_);  // 再次发布前一个点以指示方向变化
//                 }
//                 plan.push_back(new_goal);  // 将当前点添加到计划中
//                 previous_goal_ = new_goal;  // 更新上一目标点
//             }
//         }
//     }
//     else  // 如果路径点列表中只有一个点
//     {
//         new_goal.header.frame_id = "map";
//         new_goal.pose.position.x = (goalpoints.begin()->x) * tile_size_ + grid_origin_.x + tile_size_ * 0.5;
//         new_goal.pose.position.y = (goalpoints.begin()->y) * tile_size_ + grid_origin_.y + tile_size_ * 0.5;
//         new_goal.pose.orientation = tf::createQuaternionMsgFromYaw(0);  // 朝向默认设置为0
//         plan.push_back(new_goal);
//     }

//     // 将当前位姿插入到计划路径的起始点
//     double dy = plan.begin()->pose.position.y - start.pose.position.y;
//     double dx = plan.begin()->pose.position.x - start.pose.position.x;

//     if (!(fabs(dy) < 100.0 * FLT_EPSILON && fabs(dx) < 100.0 * FLT_EPSILON))  // 检查当前位置和起始点是否足够接近
//     {
//         double yaw = std::atan2(dy, dx);  // 计算朝向角度
//         geometry_msgs::Quaternion quat_temp = tf::createQuaternionMsgFromYaw(yaw);  // 生成四元数
//         geometry_msgs::PoseStamped extra_pose;
//         extra_pose = *plan.begin();  // 拷贝第一个路径点
//         extra_pose.pose.orientation = quat_temp;  // 更新朝向
//         plan.insert(plan.begin(), extra_pose);  // 插入起始点前的额外点
//         extra_pose = start;  // 设置为当前起始点
//         extra_pose.pose.orientation = quat_temp;  
//         plan.insert(plan.begin(), extra_pose);  // 插入当前起始点
//     }

//     // 将当前位姿作为路径起点插入计划
//     plan.insert(plan.begin(), start);
// }

void FullCoveragePathPlanner::parsePointlist2Plan(const geometry_msgs::PoseStamped& start,
                                                  std::list<Point_t> const& goalpoints,
                                                  std::vector<geometry_msgs::PoseStamped>& plan)
{
    plan.clear();

    auto makePose = [](double x, double y, double yaw, const geometry_msgs::PoseStamped& ref) {
        geometry_msgs::PoseStamped pose = ref;
        pose.header.frame_id = "map";
        pose.pose.position.x = x;
        pose.pose.position.y = y;
        pose.pose.position.z = 0.0;
        pose.pose.orientation = tf::createQuaternionMsgFromYaw(yaw);
        return pose;
    };

    std::vector<geometry_msgs::PoseStamped> corner_plan;
    corner_plan.reserve(goalpoints.size() + 1);

    if (goalpoints.empty())
    {
        plan.push_back(start);
        return;
    }

    for (std::list<Point_t>::const_iterator it = goalpoints.begin(); it != goalpoints.end(); ++it)
    {
        geometry_msgs::PoseStamped pose = start;
        pose.header.frame_id = "map";
        pose.pose.position.x = static_cast<double>(it->x) * tile_size_ + grid_origin_.x + tile_size_ * 0.5;
        pose.pose.position.y = static_cast<double>(it->y) * tile_size_ + grid_origin_.y + tile_size_ * 0.5;
        pose.pose.position.z = 0.0;
        pose.pose.orientation = tf::createQuaternionMsgFromYaw(0.0);
        corner_plan.push_back(pose);
    }

    const geometry_msgs::PoseStamped& first_corner = corner_plan.front();
    const double start_dx = first_corner.pose.position.x - start.pose.position.x;
    const double start_dy = first_corner.pose.position.y - start.pose.position.y;
    const double start_dist = std::hypot(start_dx, start_dy);
    if (start_dist > 100.0 * FLT_EPSILON)
    {
        const double start_yaw = std::atan2(start_dy, start_dx);
        plan.push_back(makePose(start.pose.position.x, start.pose.position.y, start_yaw, start));
    }
    else
    {
        plan.push_back(start);
    }

    plan.insert(plan.end(), corner_plan.begin(), corner_plan.end());

    const size_t corner_point_count = plan.size();

    if (plan.size() >= 3)
    {
        std::vector<geometry_msgs::PoseStamped> smooth_plan;
        smooth_plan.reserve(plan.size() * 3);
        smooth_plan.push_back(plan.front());

        const double desired_radius = std::max(0.15, static_cast<double>(tile_size_) * 0.5);
        const double sample_step = std::max(0.05, static_cast<double>(tile_size_) * 0.25);

        for (size_t i = 1; i + 1 < plan.size(); ++i)
        {
            const geometry_msgs::PoseStamped& prev = plan[i - 1];
            const geometry_msgs::PoseStamped& cur = plan[i];
            const geometry_msgs::PoseStamped& next = plan[i + 1];

            const double x0 = prev.pose.position.x;
            const double y0 = prev.pose.position.y;
            const double x1 = cur.pose.position.x;
            const double y1 = cur.pose.position.y;
            const double x2 = next.pose.position.x;
            const double y2 = next.pose.position.y;

            const double vin_x = x1 - x0;
            const double vin_y = y1 - y0;
            const double vout_x = x2 - x1;
            const double vout_y = y2 - y1;
            const double len_in = std::hypot(vin_x, vin_y);
            const double len_out = std::hypot(vout_x, vout_y);
            if (len_in < 1e-6 || len_out < 1e-6)
            {
                smooth_plan.push_back(cur);
                continue;
            }

            const double nin_x = vin_x / len_in;
            const double nin_y = vin_y / len_in;
            const double nout_x = vout_x / len_out;
            const double nout_y = vout_y / len_out;

            const double dot = clamp_(nin_x * nout_x + nin_y * nout_y, -1.0, 1.0);
            const double turn_angle = std::acos(dot);
            if (turn_angle < 0.15 || std::fabs(M_PI - turn_angle) < 0.15)
            {
                smooth_plan.push_back(cur);
                continue;
            }

            const double tan_half = std::tan(turn_angle * 0.5);
            if (std::fabs(tan_half) < 1e-6)
            {
                smooth_plan.push_back(cur);
                continue;
            }

            const double max_radius = 0.45 * std::min(len_in, len_out) / tan_half;
            const double radius = std::min(desired_radius, max_radius);
            if (radius < 0.02)
            {
                smooth_plan.push_back(cur);
                continue;
            }

            const double tangent_offset = radius * tan_half;
            const double tx_in = x1 - nin_x * tangent_offset;
            const double ty_in = y1 - nin_y * tangent_offset;
            const double tx_out = x1 + nout_x * tangent_offset;
            const double ty_out = y1 + nout_y * tangent_offset;

            const double cross = nin_x * nout_y - nin_y * nout_x;
            if (std::fabs(cross) < 1e-6)
            {
                smooth_plan.push_back(cur);
                continue;
            }

            const double normal_x = (cross > 0.0) ? -nin_y : nin_y;
            const double normal_y = (cross > 0.0) ? nin_x : -nin_x;
            const double cx = tx_in + normal_x * radius;
            const double cy = ty_in + normal_y * radius;

            const double start_ang = std::atan2(ty_in - cy, tx_in - cx);
            const double end_ang = std::atan2(ty_out - cy, tx_out - cx);

            double delta_ang = end_ang - start_ang;
            if (cross > 0.0 && delta_ang < 0.0)
            {
                delta_ang += 2.0 * M_PI;
            }
            else if (cross < 0.0 && delta_ang > 0.0)
            {
                delta_ang -= 2.0 * M_PI;
            }

            const double arc_len = std::fabs(delta_ang) * radius;
            const int samples = std::max(2, static_cast<int>(std::ceil(arc_len / sample_step)));

            if (std::hypot(tx_in - smooth_plan.back().pose.position.x, ty_in - smooth_plan.back().pose.position.y) >
                1e-4)
            {
                const double yaw_to_tangent = std::atan2(ty_in - smooth_plan.back().pose.position.y,
                                                         tx_in - smooth_plan.back().pose.position.x);
                smooth_plan.push_back(makePose(tx_in, ty_in, yaw_to_tangent, cur));
            }

            for (int s = 1; s <= samples; ++s)
            {
                const double ratio = static_cast<double>(s) / static_cast<double>(samples);
                const double ang = start_ang + delta_ang * ratio;
                const double px = cx + radius * std::cos(ang);
                const double py = cy + radius * std::sin(ang);
                const double yaw = ang + ((cross > 0.0) ? M_PI_2 : -M_PI_2);
                smooth_plan.push_back(makePose(px, py, yaw, cur));
            }
        }

        smooth_plan.push_back(plan.back());
        plan.swap(smooth_plan);
    }

    if (plan.size() >= 3)
    {
        // Chaikin corner-cutting makes all turns (including near U-turns) smoothly curved.
        std::vector<geometry_msgs::PoseStamped> chaikin_plan = plan;
        const int chaikin_iterations = 2;
        for (int iter = 0; iter < chaikin_iterations; ++iter)
        {
            if (chaikin_plan.size() < 3)
            {
                break;
            }

            std::vector<geometry_msgs::PoseStamped> refined;
            refined.reserve(chaikin_plan.size() * 2);
            refined.push_back(chaikin_plan.front());

            for (size_t i = 0; i + 1 < chaikin_plan.size(); ++i)
            {
                const geometry_msgs::PoseStamped& p0 = chaikin_plan[i];
                const geometry_msgs::PoseStamped& p1 = chaikin_plan[i + 1];

                geometry_msgs::PoseStamped q = p0;
                q.pose.position.x = 0.75 * p0.pose.position.x + 0.25 * p1.pose.position.x;
                q.pose.position.y = 0.75 * p0.pose.position.y + 0.25 * p1.pose.position.y;

                geometry_msgs::PoseStamped r = p0;
                r.pose.position.x = 0.25 * p0.pose.position.x + 0.75 * p1.pose.position.x;
                r.pose.position.y = 0.25 * p0.pose.position.y + 0.75 * p1.pose.position.y;

                refined.push_back(q);
                refined.push_back(r);
            }

            refined.push_back(chaikin_plan.back());
            chaikin_plan.swap(refined);
        }

        // Resample with small spacing so RViz/path-following shows a real curve instead of sparse polyline.
        std::vector<geometry_msgs::PoseStamped> resampled;
        resampled.reserve(chaikin_plan.size() * 2);
        resampled.push_back(chaikin_plan.front());
        const double spacing = std::max(0.03, static_cast<double>(tile_size_) * 0.15);

        for (size_t i = 0; i + 1 < chaikin_plan.size(); ++i)
        {
            const geometry_msgs::PoseStamped& a = chaikin_plan[i];
            const geometry_msgs::PoseStamped& b = chaikin_plan[i + 1];
            const double dx = b.pose.position.x - a.pose.position.x;
            const double dy = b.pose.position.y - a.pose.position.y;
            const double seg_len = std::hypot(dx, dy);

            if (seg_len < 1e-6)
            {
                continue;
            }

            const int n_insert = std::max(0, static_cast<int>(std::floor(seg_len / spacing)) - 1);
            for (int k = 1; k <= n_insert; ++k)
            {
                const double t = static_cast<double>(k) / static_cast<double>(n_insert + 1);
                geometry_msgs::PoseStamped mid = a;
                mid.pose.position.x = a.pose.position.x + t * dx;
                mid.pose.position.y = a.pose.position.y + t * dy;
                resampled.push_back(mid);
            }
            resampled.push_back(b);
        }

        plan.swap(resampled);
    }

    ROS_INFO("parsePointlist2Plan: corner points=%zu, smoothed points=%zu", corner_point_count, plan.size());

    for (size_t i = 0; i < plan.size(); ++i)
    {
        if (i + 1 < plan.size())
        {
            const double dx = plan[i + 1].pose.position.x - plan[i].pose.position.x;
            const double dy = plan[i + 1].pose.position.y - plan[i].pose.position.y;
            const double yaw = std::atan2(dy, dx);
            plan[i].pose.orientation = tf::createQuaternionMsgFromYaw(yaw);
        }
        else if (plan.size() > 1)
        {
            plan[i].pose.orientation = plan[i - 1].pose.orientation;
        }
    }


}



bool FullCoveragePathPlanner::parseCostmap(costmap_2d::Costmap2D* costmap_grid_, std::vector<std::vector<bool>>& grid,
                                           float robotRadius, float toolRadius,
                                           geometry_msgs::PoseStamped const& realStart, Point_t& scaledStart)
{
    int ix, iy, nodeRow, nodeCol;
    uint32_t nodeSize = dmax(floor(toolRadius / costmap_grid_->getResolution()), 1);  // Size of node in pixels/units
    //???????????? can you help me understand the diference betwene -> and also what does the "node" size mean and is
    // get resolution 30cm?
    //???????????? also, what is tool radius?
    uint32_t nRows = costmap_grid_->getSizeInCellsY(), nCols = costmap_grid_->getSizeInCellsX();
    ROS_INFO("nRows: %u nCols: %u nodeSize: %d", nRows, nCols, nodeSize);

    if (nRows == 0 || nCols == 0)
    {
        return false;
    }

    // Save map origin and scaling
    //????????? help to diffrentiate which one is tile, which one is node and which one is getresolution?????
    tile_size_ = nodeSize * costmap_grid_->getResolution();  // Size of a tile in meters
    grid_origin_.x = costmap_grid_->getOriginX();            // x-origin in meters
    grid_origin_.y = costmap_grid_->getOriginY();            // y-origin in meters
    ROS_INFO("costmap resolution: %g", costmap_grid_->getResolution());
    ROS_INFO("tile size: %g", tile_size_);
    ROS_INFO("grid origin: (%g, %g)", grid_origin_.x, grid_origin_.y);
    //????????? is grid origin datum????

    // Scale starting point
    scaledStart.x = static_cast<unsigned int>(
        clamp_((realStart.pose.position.x - grid_origin_.x) / tile_size_, 0.0, floor(nCols / tile_size_)));

    scaledStart.y = static_cast<unsigned int>(
        clamp_((realStart.pose.position.y - grid_origin_.y) / tile_size_, 0.0, floor(nRows / tile_size_)));

    ROS_INFO("real start: (%g, %g)", realStart.pose.position.x, realStart.pose.position.y);
    // ROS_INFO("scaled start: (%u, %u)", scaledStart.x, scaledStart.y);

    // Scale grid
    for (iy = 0; iy < nRows; iy = iy + nodeSize)
    {
        std::vector<bool> gridRow;
        for (ix = 0; ix < nCols; ix = ix + nodeSize)
        {
            //?????????? where do we specify that above 65 is occupied??
            bool nodeOccupied = false;
            for (nodeRow = 0; (nodeRow < nodeSize) && ((iy + nodeRow) < nRows) && (nodeOccupied == false); ++nodeRow)
            {
                //???????????? what does the conditions mean??????   (nodeRow < nodeSize) && ((iy + nodeRow) < nRows)
                for (nodeCol = 0; (nodeCol < nodeSize) && ((ix + nodeCol) < nCols); ++nodeCol)
                {
                    double mx = ix + nodeCol;
                    double my = iy + nodeRow;
                    if (costmap_grid_->getCost(mx, my) > costmap_2d::INSCRIBED_INFLATED_OBSTACLE)
                    {
                        //?????????? how does this if statement become true?
                        nodeOccupied = true;
                        // ROS_INFO("(%f, %f) marked occupied", mx, my);
                        break;
                    }
                }
            }
            gridRow.push_back(nodeOccupied);  // what does this push_back mean??
        }
        grid.push_back(gridRow);
    }
    return true;
}

// ???????????? can you help me understand why we have a parse grid and a parse costmap function???

bool FullCoveragePathPlanner::parseGrid(nav_msgs::OccupancyGrid const& cpp_grid_, 
                                        std::vector<std::vector<bool>>& grid,
                                        float robotRadius, float toolRadius,
                                        geometry_msgs::PoseStamped const& realStart, Point_t& scaledStart)
{
    int ix, iy, nodeRow, nodeColl;

    // 计算节点大小 nodeSize，表示工具宽度所覆盖的区域大小（单位是栅格/像素）。
    // 至少为 1，防止工具尺寸小于分辨率时无法生成有效的节点。
    uint32_t nodeSize = dmax(floor(toolRadius / cpp_grid_.info.resolution), 1);

    // 计算机器人尺寸对应的节点大小 robotNodeSize，表示机器人宽度所覆盖的区域大小（单位是栅格/像素）。
    // 至少为 1，防止机器人尺寸小于分辨率时无法生成有效的节点。
    uint32_t robotNodeSize = dmax(floor(robotRadius / cpp_grid_.info.resolution), 1);

    // 获取地图的行数（高度）和列数（宽度）。
    uint32_t nRows = cpp_grid_.info.height, nCols = cpp_grid_.info.width;
    ROS_INFO("nRows: %u nCols: %u nodeSize: %d", nRows, nCols, nodeSize);

    // 如果地图的行或列数为 0，返回 false，表示地图无效。
    if (nRows == 0 || nCols == 0)
    {
        return false;
    }

    // 保存地图原点和 tile 大小信息：
    // 每个 tile 的物理尺寸（米）等于节点大小乘以地图分辨率。
    tile_size_ = robotNodeSize * cpp_grid_.info.resolution;
    // tile_size_ = nodeSize * cpp_grid_.info.resolution;
    grid_origin_.x = cpp_grid_.info.origin.position.x;  // 地图 x 方向的起点（物理单位，米）
    grid_origin_.y = cpp_grid_.info.origin.position.y;  // 地图 y 方向的起点（物理单位，米）
    ROS_INFO("costmap resolution: %g", cpp_grid_.info.resolution);
    ROS_INFO("tile size: %g", tile_size_);
    ROS_INFO("grid origin: (%g, %g)", grid_origin_.x, grid_origin_.y);

    // 将起始点的实际坐标缩放到网格的坐标中（计算 scaledStart）：
    // 通过将实际坐标减去地图原点，然后除以 tile 的大小，得到对应的栅格坐标。
    scaledStart.x = static_cast<unsigned int>(
        clamp_((realStart.pose.position.x - grid_origin_.x) / tile_size_, 0.0,
               floor(cpp_grid_.info.width / tile_size_)));
    scaledStart.y = static_cast<unsigned int>(
        clamp_((realStart.pose.position.y - grid_origin_.y) / tile_size_, 0.0,
               floor(cpp_grid_.info.height / tile_size_)));
    ROS_INFO("real start: (%g, %g)", realStart.pose.position.x, realStart.pose.position.y);
    ROS_INFO("scaled start: (%u, %u)", scaledStart.x, scaledStart.y);

    // 遍历地图，按 nodeSize 缩放：
    // 每次跳过 nodeSize 的像素块，生成简化的缩放后的占用网格。
    for (iy = 0; iy < nRows; iy = iy + nodeSize)
    {
        std::vector<bool> gridRow;  // 当前行的占用状态。
        for (ix = 0; ix < nCols; ix = ix + nodeSize)
        {
            bool nodeOccupied = false;  // 假设当前块未被占用。

            // 检查当前块的占用状态，按 robotNodeSize 遍历。
            // 如果块内的任何像素表示占用（值 > 65），标记为占用。
            for (nodeRow = 0; (nodeRow < robotNodeSize) && ((iy + nodeRow) < nRows) && (nodeOccupied == false);
                 ++nodeRow)
            {
                for (nodeColl = 0; (nodeColl < robotNodeSize) && ((ix + nodeColl) < nCols); ++nodeColl)
                {
                    // 计算当前像素在地图数据中的索引：
                    // 考虑到 robotNodeSize 和 nodeSize 之间的差异，对索引进行了偏移修正。
                    int index_grid = dmax(
                        (iy + nodeRow - ceil(static_cast<float>(robotNodeSize - nodeSize) / 2.0)) * nCols +
                        (ix + nodeColl - ceil(static_cast<float>(robotNodeSize - nodeSize) / 2.0)), 0);

                    // 如果该像素的值 > 65，表示为占用（障碍物）。
                    // 65 是经验阈值，通常代表栅格的占用率（例如 65%）。
                    if (cpp_grid_.data[index_grid] > 65)
                    {
                        nodeOccupied = true;  // 标记当前块为占用。
                        break;  // 跳出内层循环。
                    }
                }
            }
            // 将当前块的占用状态添加到当前行。
            gridRow.push_back(nodeOccupied);
        }
        // 将当前行添加到简化后的网格中。
        grid.push_back(gridRow);
    }

    // 解析成功，返回 true。
    return true;
}

}  // namespace full_coverage_path_planner
