cmake_minimum_required(VERSION 3.1.0 FATAL_ERROR)
project(socket_io_test)
include(/home/pi/Git/socket.io-client-cpp/CMakeLists.txt)

#Header and sources
set(${PROJECT_NAME}_headers ./sio_test.h)
set(${PROJECT_NAME}_sources sio_test.cpp)

add_library(${PROJECT_NAME} STATIC ${${PROJECT_NAME}_headers} ${${PROJECT_NAME}_sources})
set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_STANDARD 11)
set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_STANDARD_REQUIRED ON)
target_link_libraries(${PROJECT_NAME} i2c_base_cpp)
target_link_libraries(${PROJECT_NAME} sioclient)
target_link_libraries(${PROJECT_NAME} pthread )
message(STATUS ${Boost_INCLUDE_DIRS} )
install(TARGETS ${PROJECT_NAME}
				RUNTIME DESTINATION bin
				LIBRARY DESTINATION lib
				ARCHIVE DESTINATION lib/static)
#target_include_directories(sio_test PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../src" ${Boost_INCLUDE_DIRS} )
