cmake_minimum_required(VERSION 3.0.2)
project(data_interaction)

# 手动指定mosquitto库的路径
set(MOSQUITTO_INCLUDE_DIR "/usr/include")
set(MOSQUITTO_LIB_DIR "/usr/lib")
set(MOSQUITTO_LIB mosquitto)

include_directories(${MOSQUITTO_INCLUDE_DIR})
link_directories(${MOSQUITTO_LIB_DIR})

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  sensor_msgs
  pcl_conversions
  message_generation
  custom_msgs
  gnss_gridmap
  roslib
)
find_package(yaml-cpp REQUIRED)
find_package(PCL  REQUIRED)
find_package(CURL REQUIRED)

## System dependencies are found with CMake's conventions
# find_package(Boost REQUIRED COMPONENTS system)


## Uncomment this if the package has a setup.py. This macro ensures
## modules and global scripts declared therein get installed
## See http://ros.org/doc/api/catkin/html/user_guide/setup_dot_py.html
# catkin_python_setup()


generate_messages(
   DEPENDENCIES
   std_msgs
 )

################################################
## Declare ROS dynamic reconfigure parameters ##
################################################

## To declare and build dynamic reconfigure parameters within this
## package, follow these steps:
## * In the file package.xml:
##   * add a build_depend and a exec_depend tag for "dynamic_reconfigure"
## * In this file (CMakeLists.txt):
##   * add "dynamic_reconfigure" to
##     find_package(catkin REQUIRED COMPONENTS ...)
##   * uncomment the "generate_dynamic_reconfigure_options" section below
##     and list every .cfg file to be processed

## Generate dynamic reconfigure parameters in the 'cfg' folder
# generate_dynamic_reconfigure_options(
#   cfg/DynReconf1.cfg
#   cfg/DynReconf2.cfg
# )

# 在 find_package 部分添加


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
 LIBRARIES data_interaction
 CATKIN_DEPENDS roscpp rospy std_msgs   auto_msgs sensor_msgs gnss_gridmap
 DEPENDS system_lib PCL 
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${PCL_INCLUDE_DIRS}
  ${CURL_INCLUDE_DIR}
  ${YAML_CPP_INCLUDE_DIR}
)

## Declare a C++ library
# add_library(${PROJECT_NAME}
#   src/${PROJECT_NAME}/data_interaction.cpp
# )

## Add cmake target dependencies of the library
## as an example, code may need to be generated before libraries
## either from message generation or dynamic reconfigure
# add_dependencies(${PROJECT_NAME} ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

## Declare a C++ executable
## With catkin_make all packages are built within a single CMake context
## The recommended prefix ensures that target names across packages don't collide
add_executable(
data_interaction 
src/data_interaction.cpp
src/distance.cpp
)


## Specify libraries to link a library or executable target against
 target_link_libraries(${PROJECT_NAME}
   ${catkin_LIBRARIES}
   ${MOSQUITTO_LIB}
   ${CURL_LIBRARIES}
   gnss_gridmap 
    yaml-cpp
)

find_package(PostgreSQL REQUIRED)
if(PostgreSQL_FOUND)
  include_directories(${PostgreSQL_INCLUDE_DIRS})
  target_link_libraries(${PROJECT_NAME} ${PostgreSQL_LIBRARIES})
endif()
#############
## Install ##
#############


## Mark other files for installation (e.g. launch and bag files, etc.)
install(
  TARGETS data_interaction
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(
  DIRECTORY launch/
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch
)


