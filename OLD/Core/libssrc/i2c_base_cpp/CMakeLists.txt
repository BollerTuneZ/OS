cmake_minimum_required(VERSION 3.1.0 FATAL_ERROR)

project(i2c_base_cpp)

#Header and sources
set(${PROJECT_NAME}_headers ./i2c_base.h)
set(${PROJECT_NAME}_sources i2c_base.cpp)

#create binary
add_library(${PROJECT_NAME} STATIC ${${PROJECT_NAME}_headers} ${${PROJECT_NAME}_sources})
install(TARGETS ${PROJECT_NAME}
				RUNTIME DESTINATION bin
				LIBRARY DESTINATION lib
				ARCHIVE DESTINATION lib/static)



