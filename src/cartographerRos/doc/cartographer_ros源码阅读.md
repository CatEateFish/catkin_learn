#  cartographer_ros源码阅读

[TOC]

# 0.概述

## 0.1 概述

本文主要记录我阅读cartographer_ros的一些事情.

## 0.2参考资料

* [源码下载地址](https://github.com/hitcm/cartographer_ros.git):非官方,别人在官方源码的基础上进行了修改,核心源码不变,只是修改了编译文件,使编译更加方便.
* [markdown语法:表示目录文件结构,方法汇总](https://vimsky.com/article/3606.html)
* [rst文件介绍](https://www.jianshu.com/p/1885d5570b37)
* [package.xml](http://wiki.ros.org/catkin/package.xml)
* [package.xml中文翻译](https://blog.csdn.net/xuehuafeiwu123/article/details/53929806)
* [CMakeLists.txt](http://wiki.ros.org/catkin/CMakeLists.txt)
* [CMakeLists.txt中文翻译](https://blog.csdn.net/xuehuafeiwu123/article/details/53929834)
* [cmake官网](https://cmake.org/)
* [cmake-tutorial](https://cmake.org/cmake-tutorial/)
* [cmake-api中文翻译](https://gearyyoung.gitbooks.io/cmake-api/content/)

## 0.3遇到的一些问题

* 文件夹中出现了README.rst~隐藏文件[已解决]
  * 使用gedit和vim文本编辑器编辑文件时会产生此类文件,一般为隐藏文件,作为编辑器崩溃时的文件备份使用.
* 



# 1. 源码文件结构

## 1.1具体结构及每个文件的用途

```
project
|	AUTHORS
|	cartographer_ros.rosinstall
|	CONTRIBUTING.md
|	Dockerfile
|	LICENSE
|	README.rst
|___cartographer_ros
|	|	CMakeLists.txt
|	|	package.xml
|	|___cmake_moduls
|	|	|	FindEigen3.camke
|	|___configuration_files
|	|	|	backpack_2d.lua
|	|	|	backpack_3d.lua
|	|	|	demo_2d.rviz
|	|	|	demo_3d.rviz
|	|	|	pr2.lua
|	|	|	revo_lds.lua
|	|___launch
|	|	|	backpack_2d.launch
|	|	|	backpack_3d.launch
|	|	|	demo_backpack_2d.launch
|	|	|	demo_backpack_3d.launch
|	|	|	demo_pr2.launch
|	|	|	demo_revo_lds.launch
|	|	|	laser_2d.launch
|	|___script
|	|	|	tf_remove_frames.py
|	|___urdf
|	|	|	backpack_2d.urdf
|	|	|	backpack_3d.urdf
|	|___src
|	|	|	cartographer_node_main.cc
|	|	|	map_writer.cc
|	|	|	map_writer.h
|	|	|	msg_conversion.cc
|	|	|	msg_conversion.h
|	|	|	node_options.cc
|	|	|	node_options.h
|	|	|	occupancy_grid.cc


```

# 2. cartographer_ros 

## 2.1 package.xml

```xml
  <build_depend>g++-static</build_depend><!--静态g++库-->
  <build_depend>google-mock</build_depend><!--google C++ 单元测试框架-->
  <build_depend>python-sphinx</build_depend><!--项目文档生成工具-->
  <build_depend>protobuf-dev</build_depend>

  <depend>libgflags-dev</depend>
  <depend>libgoogle-glog-dev</depend>
  <depend>rosbag</depend>
  <depend>roscpp</depend>
  <depend>roslib</depend>
  <depend>sensor_msgs</depend>
  <depend>std_msgs</depend>
  <depend>tf2</depend>
  <depend>tf2_eigen</depend>
  <depend>tf2_ros</depend>
  <depend>geometry_msgs</depend>
  <depend>nav_msgs</depend>
  <depend>libpcl-all-dev</depend>
  <depend>pcl_conversions</depend>
  <depend>eigen_conversions</depend>
  <depend>message_runtime</depend>
  <depend>yaml-cpp</depend>
```

* [google-mock简介](https://www.cnblogs.com/jycboy/p/gmock_summary.html)
* [google-mock 官方github地址](https://github.com/google/googlemock):C++ 单元测试框架
* [sphinx官网](https://pypi.org/project/Sphinx/):项目文档生成工具
* [python sphinx 文档自动生成方法](https://www.cnblogs.com/ToDoToTry/p/9361838.html)
* [protobuf-dev 官方github地址](https://github.com/protocolbuffers/protobuf):google公司内部的混合语言数据标准,一种轻便高效的结构化数据存储格式,用于序列化
* [Google Protocol Buffer 的使用和原理](https://www.ibm.com/developerworks/cn/linux/l-cn-gpb/index.html)
* [gflags github地址](https://github.com/gflags/gflags):Google开源的一个命令行flag（区别于参数）库
* [gflags使用文档](http://www.yeolar.com/note/2014/12/14/gflags/)
* [google-glog github 地址](https://github.com/google/glog):google开源的应用级日志库
* [google glog 使用方法](https://blog.csdn.net/irwin_chen/article/details/8798346)
* [rosbag](http://wiki.ros.org/rosbag):用户记录和回放ros数据
* [ROS总结--录制与回放数据](https://blog.csdn.net/u010510350/article/details/72457758)
* [roscpp](http://wiki.ros.org/roscpp):ROS 的C++实现,提供了客户端库用来快速实现话题,服务,参数等.
* [ROS学习之roscpp内部架构概况](https://blog.csdn.net/shiyue0010/article/details/51957458)
* [roslib](http://wiki.ros.org/roslib):是所有ROS客户端库和工具的基础依赖.
* [sensor_msgs](http://wiki.ros.org/sensor_msgs):定义了一些常见的传感器数据类型,包括相机,激光扫描数据等.
* [std_msgs](http://wiki.ros.org/std_msgs):定义了一些ROS中常用的数据类型
* [tf2](http://wiki.ros.org/tf2):tf2是第二版的转换库,主要用于坐标系转换等.
* [tf2_eigen](http://wiki.ros.org/tf2_eigen):This is a conversion package to convert tf2 data to eigen data structures. These functions are templated
* [tf2_ros](http://wiki.ros.org/tf2_ros):This package contains the ROS bindings for the tf2 library, for both Python and C++
* [geometry_msgs](http://wiki.ros.org/geometry_msgs):geometry_msgs provides messages for common geometric primitives such as points, vectors, and poses. These primitives are designed to provide a common data type and facilitate interoperability throughout the system.
* [nav_msgs](http://wiki.ros.org/nav_msgs):nav_msgs defines the common messages used to interact with the [navigation](http://wiki.ros.org/navigation) stack.
* [pcl_conversions](http://wiki.ros.org/pcl_conversions):Provides conversions from PCL data types and ROS message types
* [eigen_conversions](http://wiki.ros.org/eigen_conversions):Conversion functions between: - Eigen and KDL - Eigen and geometry_msgs
* [message_runtime](http://wiki.ros.org/message_runtime):Package modeling the run-time dependencies for language bindings of messages.
* [rosunit](http://wiki.ros.org/rosunit):ROS的单元测试包.
* [pcl](http://pointclouds.org/documentation/):一个开源的点云库,实现了大量点云的通用算法和高效数据结构.
* [yaml-cpp](http://yaml.org/):YAML是一个所有编程语言的对人友好的数据序列化标准.

## 2.2CMakeLists.txt

```cmake
# Copyright 2016 The Cartographer Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

cmake_minimum_required(VERSION 2.8) #cmake最小版本限制 

project(cartographer_ros) # 项目名

set(PACKAGE_DEPENDENCIES
  eigen_conversions
  geometry_msgs
  cartographer_ros_msgs
  roscpp
  sensor_msgs
  nav_msgs
  tf2
  tf2_eigen
  tf2_ros
) # 设置软件包依赖

set(CMAKE_CXX_FLAGS "-pthread -std=c++11 -Wreorder") # 设置C++编译器参数

if(NOT CMAKE_BUILD_TYPE OR CMAKE_BUILD_TYPE STREQUAL "")
  set(CMAKE_BUILD_TYPE Release) # 设置编译类型
endif()

if(CMAKE_BUILD_TYPE STREQUAL "Release")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3 -DNDEBUG")
elseif(CMAKE_BUILD_TYPE STREQUAL "RelWithDebInfo")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3 -g -DNDEBUG")
elseif(CMAKE_BUILD_TYPE STREQUAL "Debug")
  message(FATAL_ERROR "Cartographer is too slow to be useful in debug mode.")
else()
  message(FATAL_ERROR "Unknown CMAKE_BUILD_TYPE: ${CMAKE_BUILD_TYPE}")
endif()

message(STATUS "Build type: ${CMAKE_BUILD_TYPE}")  # 输出信息

find_package(catkin REQUIRED COMPONENTS ${PACKAGE_DEPENDENCIES})  # 寻找其他依赖的Cmake软件包
include_directories(${catkin_INCLUDE_DIRS}) # 指定构建树包含路径

catkin_package(
  CATKIN_DEPENDS
    message_runtime
    ${PACKAGE_DEPENDENCIES}
)
# catkin_package() 是 catkin 支持的 CMake 宏指令。用来向编译系统指明 catkin-specific 的信息，而编译系统来生成 pkg-config and CMake files。
# 该函数必须用在用 add_library() or add_executable() 声明之前。

LIST(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake_modules)

find_package(PCL REQUIRED COMPONENTS common io)
include_directories(${PCL_INCLUDE_DIRS})
link_directories(${PCL_LIBRARY_DIRS}) # 指定连接器查找库的路径
add_definitions(${PCL_DEFINITIONS}) 

find_package(Eigen3 REQUIRED)
include_directories(${EIGEN_INCLUDE_DIRS})

find_package(cartographer REQUIRED)
include_directories(${CARTOGRAPHER_INCLUDE_DIRS})
link_directories(${CARTOGRAPHER_LIBRARY_DIRS})

find_package(ZLIB REQUIRED)
include_directories(${ZLIB_INCLUDE_DIRS})

find_package(Boost REQUIRED
 COMPONENTS
 system
 iostreams
)
add_definitions(${BOOST_DEFINITIONS})
include_directories(${Boost_INCLUDE_DIRS})
link_directories(${Boost_LIBRARY_DIRS})

add_executable(cartographer_node
  src/cartographer_node_main.cc
  src/map_writer.cc
  src/map_writer.h
  src/msg_conversion.cc
  src/msg_conversion.h
  src/node_options.cc
  src/node_options.h
  src/occupancy_grid.cc
  src/occupancy_grid.h
  src/ros_log_sink.cc
  src/ros_log_sink.h
  src/sensor_data.cc
  src/sensor_data.h
  src/sensor_data_producer.cc
  src/sensor_data_producer.h
  src/time_conversion.cc
  src/time_conversion.h
)
# 使用给定的源文件,为工程引入一个可执行文件
target_link_libraries(cartographer_node
  ${CARTOGRAPHER_LIBRARIES}
  ${PCL_LIBRARIES}
  ${catkin_LIBRARIES}
  gflags
  yaml-cpp
)
add_dependencies(cartographer_node
  ${catkin_EXPORTED_TARGETS}
)

catkin_add_gtest(time_conversion_test
  src/time_conversion_test.cc
  src/time_conversion.h
  src/time_conversion.cc
)# 单元测试相关

target_link_libraries(time_conversion_test
  ${CARTOGRAPHER_LIBRARIES}
  ${GTEST_BOTH_LIBRARIES}
  ${catkin_LIBRARIES}
)# 将给定库链接到一个目标上
add_dependencies(time_conversion_test
  ${catkin_EXPORTED_TARGETS}
)

install(DIRECTORY launch urdf configuration_files
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(TARGETS cartographer_node
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(PROGRAMS scripts/tf_remove_frames.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

```



