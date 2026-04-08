#include "gnss_gridmap/Point2Line.h"

// 插值路径点生成函数
nav_msgs::Path Point2Line::generateInterpolatedPath(const nav_msgs::Path& planning, double resolution) {
    nav_msgs::Path interpolated_path;
    for (size_t i = 0; i < planning.poses.size() - 1; ++i) {
        // 获取当前点和下一个点
        const auto& start = planning.poses[i].pose.position;
        const auto& end = planning.poses[i + 1].pose.position;
        // 计算两点之间的直线距离
        double dx = end.x - start.x;
        double dy = end.y - start.y;
        double distance = std::sqrt(dx * dx + dy * dy);
        // 计算插值点数量
        int num_points = static_cast<int>(distance / resolution);
        // 按分辨率插值
        for (int j = 0; j < num_points; ++j) {
            double t = static_cast<double>(j) / num_points;
            geometry_msgs::PoseStamped interpolated_pose;
            interpolated_pose.pose.position.x = start.x + t * dx;
            interpolated_pose.pose.position.y = start.y + t * dy;
            interpolated_pose.pose.orientation = planning.poses[i].pose.orientation; // 保留方向
            interpolated_path.poses.push_back(interpolated_pose);
        }
    }

    // 确保最后一个点添加到路径中
    interpolated_path.poses.push_back(planning.poses.back());
    
    return interpolated_path;
}


std::vector<geometry_msgs::PoseStamped> Point2Line::rotatePath(const std::vector<geometry_msgs::PoseStamped>& pathMsg, double yaw, double originX, double originY) {
    std::vector<geometry_msgs::PoseStamped> rotatedPath = pathMsg;

    // 定义旋转矩阵
    Eigen::Matrix2d rotationMatrix;
    rotationMatrix << std::cos(yaw), -std::sin(yaw),
                      std::sin(yaw),  std::cos(yaw);


    // 定义原点
    Eigen::Vector2d origin(originX, originY);

    for (auto& poseStamped : rotatedPath) {
        // 将点转换为 Eigen 向量
        Eigen::Vector2d point(poseStamped.pose.position.x, poseStamped.pose.position.y);

        // 平移、旋转、平移回全局坐标系
        point = rotationMatrix * (point - origin) + origin;

        // 更新点的位置
        poseStamped.pose.position.x = point.x();
        poseStamped.pose.position.y = point.y();
    }

    return rotatedPath;
}

