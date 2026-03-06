# Install script for directory: /home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ragen/ros_ws/CCPP_Server_7/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs/msg/Controller" TYPE FILE FILES
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/Controller/AEBCmd.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/Controller/PRNDShiftCmd.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/Controller/SteeringCmd.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/Controller/TrqBreCmd.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/Controller/TrqBreCmd485.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs/msg/Detection" TYPE FILE FILES
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/Detection/ImageObject.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/Detection/LidarRawObject.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/Detection/Object.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/Detection/ImageObjectArray.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/Detection/LidarRawObjectArray.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/Detection/ObjectArray.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs/msg/Localization" TYPE FILE FILES
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/Localization/CurPose.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/Localization/NaviData.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/Localization/SlamPose.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/Localization/UWBPose.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs/msg/SmallCar" TYPE FILE FILES
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/SmallCar/ControlMode.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/SmallCar/PointSelect.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs/msg/Map" TYPE FILE FILES
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/Map/LaneLine.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/Map/LaneLineArray.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs/msg/Planning" TYPE FILE FILES
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/Planning/Path.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/Planning/Request.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/Planning/AEB.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs/msg/VehicleStat" TYPE FILE FILES "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/VehicleStat/VehicleStat.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs/msg/Task" TYPE FILE FILES
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/Task/ImageDetect.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/Task/RoadAttri.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/Task/TaskAttri.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/Task/distant.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/Task/mission.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs/msg/UWB" TYPE FILE FILES
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/UWB/LinktrackAnchorframe0.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/UWB/LinktrackAoaNode0.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/UWB/LinktrackAoaNodeframe0.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/UWB/LinktrackNode0.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/UWB/LinktrackNode1.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/UWB/LinktrackNode2.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/UWB/LinktrackNodeframe0.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/UWB/LinktrackNodeframe1.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/UWB/LinktrackNodeframe2.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/UWB/LinktrackNodeframe3.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/UWB/LinktrackTag.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/UWB/LinktrackTagframe0.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/UWB/Test.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/UWB/TofsenseCascade.msg"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/msg/UWB/TofsenseFrame0.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs/srv/V2X" TYPE FILE FILES
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/srv/V2X/Ambulance.srv"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/srv/V2X/TrafficLight.srv"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/srv/V2X/GateStat.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs/srv/PLAN" TYPE FILE FILES
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/srv/PLAN/Control.srv"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/srv/PLAN/Route.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs/srv/TASK" TYPE FILE FILES "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/srv/TASK/Task.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs/srv/MAP_SW" TYPE FILE FILES "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/srv/MAP_SW/Map_Switch.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs/srv/WARN" TYPE FILE FILES "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/srv/WARN/Warn.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs/srv/APP" TYPE FILE FILES "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/srv/APP/App.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs/srv/LIDAR" TYPE FILE FILES "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/srv/LIDAR/Wharf.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs/srv/BCM" TYPE FILE FILES
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/srv/BCM/DoorCmd.srv"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/srv/BCM/FogLampCmd.srv"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/srv/BCM/HornsCmd.srv"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/srv/BCM/BrakeLightCmd.srv"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/srv/BCM/SideLampsCmd.srv"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/srv/BCM/TurnLightCmd.srv"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/srv/BCM/WindowCmd.srv"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/srv/BCM/WipersCmd.srv"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/srv/BCM/EPBCmd.srv"
    "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/srv/BCM/LKSStatusCmd.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs/cmake" TYPE FILE FILES "/home/ragen/ros_ws/CCPP_Server_7/build/custom_msgs/catkin_generated/installspace/custom_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ragen/ros_ws/CCPP_Server_7/devel/include/custom_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ragen/ros_ws/CCPP_Server_7/devel/share/roseus/ros/custom_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ragen/ros_ws/CCPP_Server_7/devel/share/common-lisp/ros/custom_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ragen/ros_ws/CCPP_Server_7/devel/share/gennodejs/ros/custom_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/ragen/ros_ws/CCPP_Server_7/devel/lib/python3/dist-packages/custom_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/ragen/ros_ws/CCPP_Server_7/devel/lib/python3/dist-packages/custom_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ragen/ros_ws/CCPP_Server_7/build/custom_msgs/catkin_generated/installspace/custom_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs/cmake" TYPE FILE FILES "/home/ragen/ros_ws/CCPP_Server_7/build/custom_msgs/catkin_generated/installspace/custom_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs/cmake" TYPE FILE FILES
    "/home/ragen/ros_ws/CCPP_Server_7/build/custom_msgs/catkin_generated/installspace/custom_msgsConfig.cmake"
    "/home/ragen/ros_ws/CCPP_Server_7/build/custom_msgs/catkin_generated/installspace/custom_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/custom_msgs" TYPE FILE FILES "/home/ragen/ros_ws/CCPP_Server_7/src/custom_msgs/package.xml")
endif()

