cmake_minimum_required(VERSION 3.1.0 FATAL_ERROR)

project(EncoderClient)

#Header and sources
set(${PROJECT_NAME}_headers ./encoder_client.h)
set(${PROJECT_NAME}_sources encoder_client.cpp)

#create binary
add_library(${PROJECT_NAME} SHARED ${${PROJECT_NAME}_headers} ${${PROJECT_NAME}_sources})
install(TARGETS ${PROJECT_NAME}
				RUNTIME DESTINATION bin
				LIBRARY DESTINATION lib
				ARCHIVE DESTINATION lib/static)

target_link_libraries(${PROJECT_NAME} i2c_base_cpp)


