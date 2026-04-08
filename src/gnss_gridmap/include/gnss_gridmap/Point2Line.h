#include <vector>
#include <cmath>
#include <geometry_msgs/PoseStamped.h>
#include <eigen3/Eigen/Dense>

#include <ros/ros.h>
#include <nav_msgs/Path.h>
#include <geometry_msgs/PoseStamped.h>


class Point2Line{
public:
    nav_msgs::Path generateInterpolatedPath(const nav_msgs::Path& planning, double resolution); //插值生成总体路径

    std::vector<geometry_msgs::PoseStamped> rotatePath(const std::vector<geometry_msgs::PoseStamped>& pathMsg, 
        double yaw, double originX, double originY);   //将路径旋转到车辆坐标系下
    
    
private:
    


protected:
};