cmake_minimum_required(VERSION 3.10)
project(cmake_test)

include(gtest.cmake)

find_package(Threads REQUIRED)
add_executable(Test main.cpp)
add_dependencies(Test googletest)
target_include_directories(Test PRIVATE ${GTEST_INCLUDE_DIRS})
target_link_libraries(
  Test
  ${GTEST_LIB}
  ${GTEST_MAIN_LIB}
  Threads::Threads
  )

