cmake_minimum_required(VERSION 3.1.0 FATAL_ERROR)
include(/home/pi/Git/socket.io-client-cpp/CMakeLists.txt)
add_executable(sio_test siotest.cpp)
set_property(TARGET sio_test PROPERTY CXX_STANDARD 11)
set_property(TARGET sio_test PROPERTY CXX_STANDARD_REQUIRED ON)
target_link_libraries(sio_test sioclient)
target_link_libraries(sio_test pthread )
message(STATUS ${Boost_INCLUDE_DIRS} )
#target_include_directories(sio_test PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../src" ${Boost_INCLUDE_DIRS} )
