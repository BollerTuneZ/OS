cmake_minimum_required(VERSION 3.1.0 FATAL_ERROR)

project(StepperDriver)

#Header and sources
set(${PROJECT_NAME}_headers ./btz_stepper.h)
set(${PROJECT_NAME}_sources btz_stepper.cpp)

#create binary
add_library(${PROJECT_NAME} SHARED ${${PROJECT_NAME}_headers} ${${PROJECT_NAME}_sources})
install(TARGETS ${PROJECT_NAME}
				RUNTIME DESTINATION bin
				LIBRARY DESTINATION lib
				ARCHIVE DESTINATION lib/static)

target_link_libraries(${PROJECT_NAME} gpio_driver)


