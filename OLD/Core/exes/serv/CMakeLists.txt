cmake_minimum_required(VERSION 3.1.0 FATAL_ERROR)

project(serv)

add_subdirectory(testing)
set(serv_headers testing/driver_test.h)
set(serv_sources main.cpp testing/driver_test.cpp)

include_directories(/usr/local/lib)
add_executable(serv.app ${serv_headers} ${serv_sources})
set_property(TARGET serv.app PROPERTY CXX_STANDARD 11)
set_property(TARGET serv.app PROPERTY CXX_STANDARD_REQUIRED ON)
target_link_libraries(serv.app light)
target_link_libraries(serv.app EncoderClient)
target_link_libraries(serv.app i2c_base_cpp)
target_link_libraries(serv.app gpio_driver)
target_link_libraries(serv.app socket_io_test)
target_link_libraries(serv.app StepperDriver)

install(TARGETS serv.app
				RUNTIME DESTINATION bin
				LIBRARY DESTINATION lib
				ARCHIVE DESTINATION lib/static)
#target_include_directories(sio_test PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../src" ${Boost_INCLUDE_DIRS} )
