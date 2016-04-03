cmake_minimum_required(VERSION 3.1.0 FATAL_ERROR)

project(serv)

set(${PROJECT_NAME}_headers "")
set(${PROJECT_NAME}_sources main.cpp)

include_directories(/usr/local/lib)
include(/home/pi/Git/socket.io-client-cpp/CMakeLists.txt)
add_executable(serv.app main.cpp)
set_property(TARGET serv.app PROPERTY CXX_STANDARD 11)
set_property(TARGET serv.app PROPERTY CXX_STANDARD_REQUIRED ON)
target_link_libraries(serv.app sioclient)
target_link_libraries(serv.app pthread )
target_link_libraries(serv.app light)
target_link_libraries(serv.app EncoderClient)
target_link_libraries(serv.app i2c_base_cpp)
target_link_libraries(serv.app gpio_driver)

message(STATUS ${Boost_INCLUDE_DIRS} )
install(TARGETS serv.app
				RUNTIME DESTINATION bin
				LIBRARY DESTINATION lib
				ARCHIVE DESTINATION lib/static)
#target_include_directories(sio_test PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../src" ${Boost_INCLUDE_DIRS} )
