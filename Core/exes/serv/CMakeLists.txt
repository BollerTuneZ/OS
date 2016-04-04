cmake_minimum_required(VERSION 3.1.0 FATAL_ERROR)

project(serv)

add_subdirectory(testing)
set(${PROJECT_NAME}_headers "")
set(${PROJECT_NAME}_sources main.cpp)

include_directories(/usr/local/lib)
add_executable(serv.app main.cpp)
target_link_libraries(serv.app light)
target_link_libraries(serv.app EncoderClient)
target_link_libraries(serv.app i2c_base_cpp)
target_link_libraries(serv.app gpio_driver)
target_link_libraries(serv.app socket_io_test)

install(TARGETS serv.app
				RUNTIME DESTINATION bin
				LIBRARY DESTINATION lib
				ARCHIVE DESTINATION lib/static)
#target_include_directories(sio_test PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../src" ${Boost_INCLUDE_DIRS} )
