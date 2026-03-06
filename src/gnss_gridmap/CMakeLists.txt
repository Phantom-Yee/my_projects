cmake_minimum_required(VERSION 3.0.2)
project(gnss_gridmap)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  nav_msgs
  roscpp
  rospy
  std_msgs
  custom_msgs
  full_coverage_path_planner
)



find_package(Eigen3 REQUIRED)
include_directories(
  ${catkin_INCLUDE_DIRS}
  /usr/include/postgresql
  ${EIGEN3_INCLUDE_DIRS}  # 添加 Eigen 的头文件路径
)

# catkin_package(
#   INCLUDE_DIRS include  # 导出头文件目录
#   LIBRARIES ${PROJECT_NAME}  # 导出库（此处 PROJECT_NAME 即 gnss_gridmap）
#   CATKIN_DEPENDS roscpp nav_msgs  # 依赖的其他ROS包
# )

# find_package(full_coverage_path_planner REQUIRED)
# include_directories(
#   ${full_coverage_path_planner_INCLUDE_DIRS}  # 添加 Eigen 的头文件路径
# )

find_library(PQ_LIBRARY pq)
if(NOT PQ_LIBRARY)
  message(FATAL_ERROR "libpq library not found")
endif()

## setPostgreSQL
set(PostgreSQL_TYPE_INCLUDE_DIR "/usr/include/postgresql")
set(PostgreSQL_LIBRARIES "/usr/lib/aarch64-linux-gnu/libpq.so")
set(PostgreSQL_VERSION "10")


find_package(PostgreSQL REQUIRED)
include_directories(${PostgreSQL_INCLUDE_DIRS})

# add_library(${PROJECT_NAME}
#   src/ main.cpp  # Gnss类的实现文件
#   # 其他源文件...
# )


###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if your package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
   INCLUDE_DIRS include
#  LIBRARIES gnss_localization
   LIBRARIES gnss_gridmap  # 关键：声明要导出的库
   CATKIN_DEPENDS geometry_msgs nav_msgs roscpp rospy std_msgs custom_msgs  full_coverage_path_planner
#  DEPENDS system_lib
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
  include
  ../full_coverage_path_planner/include
  ${catkin_INCLUDE_DIRS}
)

# 在 add_executable 之前添加
add_library(gnss_gridmap
  src/Point2Line.cpp
  src/Path2Postgre.cpp
  src/EdgePath.cpp
  src/gnss.cpp
  # 其他需要被外部调用的源文件
)

# 链接库的依赖
target_link_libraries(gnss_gridmap
  ${catkin_LIBRARIES}
  ${PQ_LIBRARY}
  ${PostgreSQL_LIBRARIES}
  full_coverage_path_planner
)

# 添加依赖关系
add_dependencies(gnss_gridmap ${catkin_EXPORTED_TARGETS})

## Declare a C++ library
# add_library(${PROJECT_NAME}
#   src/localization.cpp
#   src/Point2Line.cpp
# )
# add_dependencies(${PROJECT_NAME} ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
# target_link_libraries(${PROJECT_NAME}
#   ${catkin_LIBRARIES}
# )
## Add cmake target dependencies of the library
## as an example, code may need to be generated before libraries
## either from message generation or dynamic reconfigure
 


## Declare a C++ executable
## With catkin_make all packages are built within a single CMake context
## The recommended prefix ensures that target names across packages don't collide
add_executable(${PROJECT_NAME}_node src/main.cpp src/Point2Line.cpp src/Path2Postgre.cpp src/EdgePath.cpp)
add_dependencies(${PROJECT_NAME}_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(${PROJECT_NAME}_node 
  gnss_gridmap
  ${catkin_LIBRARIES}
  ${PQ_LIBRARY}
  ${PostgreSQL_LIBRARIES}
  full_coverage_path_planner
)


