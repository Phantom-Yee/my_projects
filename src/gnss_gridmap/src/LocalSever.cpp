#include "gnss_gridmap/LocalSever.h"

// 连接到 PostgreSQL 数据库
PGconn* connectToDatabase(const char* conninfo) {
    PGconn *conn = PQconnectdb(conninfo);

    if (PQstatus(conn) != CONNECTION_OK) {
        std::cerr << "无法连接到数据库: " << PQerrorMessage(conn) << std::endl;
        PQfinish(conn);
        return nullptr;
    }

    return conn;
}

std::vector<std::vector<geometry_msgs::Point>> readData(PGconn *conn) {
    std::vector<std::vector<geometry_msgs::Point>> fieldPoints;
    std::vector<geometry_msgs::Point> currentFieldPoints;
    int currentFieldId = -1;

    PGresult *res = PQexec(conn, "SELECT \"田块id\", 经度, 纬度 FROM your_table_name ORDER BY \"田块id\";");

    if (PQresultStatus(res) != PGRES_TUPLES_OK) {
        std::cerr << "查询失败: " << PQerrorMessage(conn) << std::endl;
        PQclear(res);
        return fieldPoints;
    }

    int numRows = PQntuples(res);
    for (int i = 0; i < numRows; ++i) {
        int fieldId = atoi(PQgetvalue(res, i, 0));
        float longitude = atof(PQgetvalue(res, i, 1));
        float latitude = atof(PQgetvalue(res, i, 2));

        if (currentFieldId != -1 && currentFieldId != fieldId) {
            fieldPoints.push_back(currentFieldPoints);
            currentFieldPoints.clear();
        }

        geometry_msgs::Point point;
        point.x = longitude;
        point.y = latitude;
        point.z = 0.0; // 假设 z 坐标为 0
        currentFieldPoints.push_back(point);

        currentFieldId = fieldId;
    }

    // 添加最后一个田块的经纬度信息
    if (!currentFieldPoints.empty()) {
        fieldPoints.push_back(currentFieldPoints);
    }

    PQclear(res);
    return fieldPoints;
}

// int main() {
//     const char* conninfo = "dbname=your_database_name user=your_user password=your_password hostaddr=127.0.0.1 port=5432";
//     PGconn *conn = connectToDatabase(conninfo);

//     if (conn != nullptr) {
//         std::vector<std::vector<geometry_msgs::Point>> fieldPoints = readData(conn);

//         // 输出结果
//         for (const auto& field : fieldPoints) {
//             std::cout << "田块边界点经纬度信息:" << std::endl;
//             for (const auto& point : field) {
//                 std::cout << "经度: " << point.x << ", 纬度: " << point.y << std::endl;
//             }
//             std::cout << std::endl;
//         }

//         PQfinish(conn);
//     }

//     return 0;
// }    