#include <vector>
#include <geometry_msgs/Point.h>
#include <fstream>
#include <sstream>
#include <cmath>
#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <tf2/LinearMath/Quaternion.h>


//生成路径围绕多边形的函数
std::vector<geometry_msgs::PoseStamped> generatePathAroundPolygon(const std::string& filename, float resolution, float offset, int robot_r);
//计算角平分线方向
geometry_msgs::Point calculateBisectorDirection(const geometry_msgs::Point& prev, 
                                                const geometry_msgs::Point& current, const geometry_msgs::Point& next);
//顶点偏移
std::vector<geometry_msgs::Point> offsetVertices(const std::vector<geometry_msgs::Point>& vertices, float offset);

