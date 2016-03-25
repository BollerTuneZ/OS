cmake_minimum_required(VERSION 3.1.0 FATAL_ERROR)

project(btz_core)
SET(VERSION_MAJOR "1")
SET(VERSION_MINOR "0")
SET(VERSION_PATCH "0")
SET(VERSION "${VERSION_MAJOR}.${VERSION_MINOR}.${VERSION_PATCH}")

include_directories(${PROJECT_SOURCE_DIR}/include)

message("Binary Tree path: ${PROJECT_BINARY_DIR}")

# Subprojects
add_subdirectory(libssrc)
add_subdirectory(exes)
