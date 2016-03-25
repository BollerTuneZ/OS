cmake_minimum_required(VERSION 3.1.0 FATAL_ERROR)

project(gpio_driver)

#Header and sources
set(${PROJECT_NAME}_headers ./gpio_btz.h)
set(${PROJECT_NAME}_sources gpio_btz.cpp)

#create binary
add_library(${PROJECT_NAME} SHARED ${${PROJECT_NAME}_headers} ${${PROJECT_NAME}_sources})
install(TARGETS ${PROJECT_NAME}
				RUNTIME DESTINATION bin
				LIBRARY DESTINATION lib
				ARCHIVE DESTINATION lib/static)



