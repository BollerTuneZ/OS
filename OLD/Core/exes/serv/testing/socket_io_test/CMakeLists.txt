cmake_minimum_required(VERSION 3.1.0 FATAL_ERROR)
project(socket_io_test)

include(/home/pi/Git/socket.io-client-cpp/CMakeLists.txt)

#Header and sources
set(socket_io_test_headers ./sio_test.h)
set(socket_io_test_sources sio_test.cpp)

add_library(socket_io_test STATIC ${socket_io_test_headers} ${socket_io_test_sources})
set_property(TARGET socket_io_test PROPERTY CXX_STANDARD 11)
set_property(TARGET socket_io_test PROPERTY CXX_STANDARD_REQUIRED ON)
target_link_libraries(socket_io_test i2c_base_cpp)
target_link_libraries(socket_io_test sioclient)
target_link_libraries(socket_io_test pthread )
message(STATUS ${Boost_INCLUDE_DIRS} )
install(TARGETS socket_io_test
				RUNTIME DESTINATION bin
				LIBRARY DESTINATION lib
				ARCHIVE DESTINATION lib/static)
#target_include_directories(sio_test PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../src" ${Boost_INCLUDE_DIRS} )
