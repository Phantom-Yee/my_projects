cmake_minimum_required(VERSION 3.0.2)
project(full_coverage_path_planner)
add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
        base_local_planner
        costmap_2d
        nav_core
        geometry_msgs
        nav_msgs
        std_msgs
        std_srvs
        pluginlib
        roscpp
        roslint
        tf
        tf2
        )
include_directories(
        include
        ${catkin_INCLUDE_DIRS}
)
add_definitions(${EIGEN3_DEFINITIONS})

catkin_package(
        INCLUDE_DIRS include
        LIBRARIES ${PROJECT_NAME}
        CATKIN_DEPENDS
        base_local_planner
        geometry_msgs
        nav_msgs
        std_msgs
        std_srvs
        tf2
        tf
        costmap_2d
        nav_core
        pluginlib
        roscpp
)

roslint_cpp()
roslint_python()

add_library(${PROJECT_NAME}
        src/common.cpp
        src/${PROJECT_NAME}.cpp
        src/boustrophedon_stc.cpp
        src/full_coverage_path_planner/clipper.cpp
        )
add_dependencies(${PROJECT_NAME} ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(${PROJECT_NAME}
        ${catkin_LIBRARIES}
        )

add_executable(path_planner src/main.cpp)
target_link_libraries(path_planner ${catkin_LIBRARIES} ${PROJECT_NAME} ${OpenCV_LIBRARIES})
add_dependencies(path_planner ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

add_executable(coverage_progress_visualizer_node src/coverage_progress_visualizer_node.cpp)
target_link_libraries(coverage_progress_visualizer_node ${catkin_LIBRARIES} ${PROJECT_NAME} ${OpenCV_LIBRARIES})
add_dependencies(coverage_progress_visualizer_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

# 安装头文件
install(
  DIRECTORY include/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
)

# 安装库文件
install(
  TARGETS full_coverage_path_planner
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

# 生成配置文件
export(TARGETS full_coverage_path_planner FILE ${PROJECT_BINARY_DIR}/full_coverage_path_plannerConfig.cmake)
