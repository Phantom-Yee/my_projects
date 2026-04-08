#include <iostream>
#include <vector>
#include <libpq-fe.h>
#include <geometry_msgs/Point.h>
//连接本地数据库
PGconn* connectToDatabase(const char* conninfo);
//读取本地数据库里面的表消息
std::vector<std::vector<geometry_msgs::Point>> readData(PGconn *conn);