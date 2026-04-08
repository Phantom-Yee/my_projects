#include "gnss_gridmap/Path2Postgre.h"
#include <mutex>
#include <sys/stat.h> 
std::mutex file_write_mutex;


void savePathToFile(const nav_msgs::Path& path,const std::string &filename)
{

    static bool info_logged = false; // 标志变量，确保只显示一次信息

    // 打开文件以覆盖模式保存路径数据
    std::ofstream file(filename, std::ios::out | std::ios::trunc);
    

    if (file.is_open()) {
        for (const auto& pose_stamped : path.poses) {
            // 提取 (x, y) 坐标
            double x = pose_stamped.pose.position.x;
            double y = pose_stamped.pose.position.y;
            // 将坐标写入文件
            file << x << " " << y << "\n";
        }
        file.close(); // 关闭文件

        if (!info_logged) {
            ROS_INFO("Path saved to coordinates.txt");
            info_logged = true; // 更新标志，确保只显示一次
        }
    } else {
        ROS_ERROR("Failed to open file for writing.");
    }
}


void saveCoordinatesToDatabase(const std::string& filePath) {
    // 连接到PostgreSQL数据库
    PGconn* conn = PQconnectdb("dbname=sde user=sde password=123456 host=127.0.0.1 port=5432");

    if (PQstatus(conn) != CONNECTION_OK) {
        std::cerr << "Connection to database failed: " << PQerrorMessage(conn) << std::endl;
        PQfinish(conn);
        return;
    }

    // 创建SQL执行环境
    PGresult* res;

    // 清空目标表
    res = PQexec(conn, "TRUNCATE TABLE reference_linkpoints_ccpp;");
    if (PQresultStatus(res) != PGRES_COMMAND_OK) {
        std::cerr << "Error truncating table reference_linkpoints_ccpp: " << PQerrorMessage(conn) << std::endl;
        PQclear(res);
        PQfinish(conn);
        return;
    }
    PQclear(res);

    res = PQexec(conn, "TRUNCATE TABLE reference_link_ccpp;");
    if (PQresultStatus(res) != PGRES_COMMAND_OK) {
        std::cerr << "Error truncating table reference_link_ccpp: " << PQerrorMessage(conn) << std::endl;
        PQclear(res);
        PQfinish(conn);
        return;
    }
    PQclear(res);

    // 定义要插入的数据
    std::vector<Point> points;
    double start_x = 0, start_y = 0, end_x = 0, end_y = 0;

    // 读取TXT文件
    std::ifstream file(filePath);
    if (!file.is_open()) {
        std::cerr << "Failed to open file: " << filePath << std::endl;
        PQfinish(conn);
        return;
    }

    std::string line;
    int objectid = 1;
    int pointorder = 0;
    while (std::getline(file, line)) {
        std::istringstream iss(line);
        double x, y;
        if (iss >> x >> y) {
            points.push_back({x, y});
            if (points.size() == 1) {
                start_x = x;
                start_y = y;
            }
            end_x = x;
            end_y = y;
        }
    }
    file.close();

    // 插入 reference_linkpoints_ccpp 数据
    for (const auto& point : points) {
        std::ostringstream query;
        query << "INSERT INTO reference_linkpoints_ccpp (objectid, id, orig_fid, pointorder, point_x, point_y) VALUES ("
              << objectid << ", 1, 1, " << pointorder << ", " << point.x << ", " << point.y << ");";

        res = PQexec(conn, query.str().c_str());
        if (PQresultStatus(res) != PGRES_COMMAND_OK) {
            std::cerr << "Error inserting into reference_linkpoints_ccpp: " << PQerrorMessage(conn) << std::endl;
            PQclear(res);
            PQfinish(conn);
            return;
        }
        PQclear(res);

        ++objectid;
        ++pointorder;
    }

    // 插入 reference_link_ccpp 数据
    std::ostringstream query;
    query << "INSERT INTO reference_link_ccpp (objectid, id, turn_flag, velocity, scenes, lane_num, start_x, start_y, end_x, end_y) VALUES ("
          << "1, 1, 0, 0, 0, 0, " << start_x << ", " << start_y << ", " << end_x << ", " << end_y << ");";

    res = PQexec(conn, query.str().c_str());
    if (PQresultStatus(res) != PGRES_COMMAND_OK) {
        std::cerr << "Error inserting into reference_link_ccpp: " << PQerrorMessage(conn) << std::endl;
        PQclear(res);
        PQfinish(conn);
        return;
    }
    PQclear(res);

    // 关闭数据库连接
    PQfinish(conn);
    ROS_INFO("Data successfully saved to the database.");
    // std::cout << "Data successfully saved to the database." << std::endl;
}

void saveEdgePathToDatabase(const std::string& filePath) {
    // 连接到PostgreSQL数据库
    PGconn* conn = PQconnectdb("dbname=sde user=sde password=123456 host=127.0.0.1 port=5432");

    if (PQstatus(conn) != CONNECTION_OK) {
        std::cerr << "Connection to database failed: " << PQerrorMessage(conn) << std::endl;
        PQfinish(conn);
        return;
    }

    // 创建SQL执行环境
    PGresult* res;

    // 清空目标表
    res = PQexec(conn, "TRUNCATE TABLE reference_linkpoints_ccppedge;");
    if (PQresultStatus(res) != PGRES_COMMAND_OK) {
        std::cerr << "Error truncating table reference_linkpoints_ccppedge: " << PQerrorMessage(conn) << std::endl;
        PQclear(res);
        PQfinish(conn);
        return;
    }
    PQclear(res);

    res = PQexec(conn, "TRUNCATE TABLE reference_link_ccppedge;");
    if (PQresultStatus(res) != PGRES_COMMAND_OK) {
        std::cerr << "Error truncating table reference_link_ccppedge: " << PQerrorMessage(conn) << std::endl;
        PQclear(res);
        PQfinish(conn);
        return;
    }
    PQclear(res);

    // 定义要插入的数据
    std::vector<Point> points;
    double start_x = 0, start_y = 0, end_x = 0, end_y = 0;

    // 读取TXT文件
    std::ifstream file(filePath);
    if (!file.is_open()) {
        std::cerr << "Failed to open file: " << filePath << std::endl;
        PQfinish(conn);
        return;
    }

    std::string line;
    int objectid = 1;
    int pointorder = 0;
    while (std::getline(file, line)) {
        std::istringstream iss(line);
        double x, y;
        if (iss >> x >> y) {
            points.push_back({x, y});
            if (points.size() == 1) {
                start_x = x;
                start_y = y;
            }
            end_x = x;
            end_y = y;
        }
    }
    file.close();

    // 插入 reference_linkpoints_ccppedge 数据
    for (const auto& point : points) {
        std::ostringstream query;
        query << "INSERT INTO reference_linkpoints_ccppedge (objectid, id, orig_fid, pointorder, point_x, point_y) VALUES ("
              << objectid << ", 1, 1, " << pointorder << ", " << point.x << ", " << point.y << ");";

        res = PQexec(conn, query.str().c_str());
        if (PQresultStatus(res) != PGRES_COMMAND_OK) {
            std::cerr << "Error inserting into reference_linkpoints_ccppedge: " << PQerrorMessage(conn) << std::endl;
            PQclear(res);
            PQfinish(conn);
            return;
        }
        PQclear(res);

        ++objectid;
        ++pointorder;
    }

    // 插入 reference_link_ccppedge 数据
    std::ostringstream query;
    query << "INSERT INTO reference_link_ccppedge (objectid, id, turn_flag, velocity, scenes, lane_num, start_x, start_y, end_x, end_y) VALUES ("
          << "1, 1, 0, 0, 0, 0, " << start_x << ", " << start_y << ", " << end_x << ", " << end_y << ");";

    res = PQexec(conn, query.str().c_str());
    if (PQresultStatus(res) != PGRES_COMMAND_OK) {
        std::cerr << "Error inserting into reference_link_ccppedge: " << PQerrorMessage(conn) << std::endl;
        PQclear(res);
        PQfinish(conn);
        return;
    }
    PQclear(res);

    // 关闭数据库连接
    PQfinish(conn);
    ROS_INFO("EdgeData successfully saved to the database.");
    // std::cout << "Data successfully saved to the database." << std::endl;
}
