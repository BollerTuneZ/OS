cmake_minimum_required(VERSION 3.1.0 FATAL_ERROR)

project(serv)

set(${PROJECT_NAME}_headers "")
set(${PROJECT_NAME}_sources main.cpp)

include_directories(/usr/local/lib)
include(/home/pi/Git/socket.io-client-cpp/CMakeLists.txt)
add_executable(${PROJECT_NAME} ${${PROJECT_NAME}_headers} ${${PROJECT_NAME}_sources})
set_property(TARGET main.app PROPERTY CXX_STANDARD 11)
set_property(TARGET main.app PROPERTY CXX_STANDARD_REQUIRED ON)
target_link_libraries(${PROJECT_NAME} sioclient)
target_link_libraries(${PROJECT_NAME} pthread )
target_link_libraries(${PROJECT_NAME} light)
target_link_libraries(${PROJECT_NAME} EncoderClient)
target_link_libraries(${PROJECT_NAME} i2c_base_cpp)
target_link_libraries(${PROJECT_NAME} gpio_driver)

message(STATUS ${Boost_INCLUDE_DIRS} )
install(TARGETS ${PROJECT_NAME}
				RUNTIME DESTINATION bin
				LIBRARY DESTINATION lib
				ARCHIVE DESTINATION lib/static)
#target_include_directories(sio_test PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../src" ${Boost_INCLUDE_DIRS} )

