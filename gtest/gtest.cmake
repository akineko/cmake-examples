cmake_minimum_required(VERSION 3.10)
project(googletest-download)

include(ExternalProject)

find_package(Threads REQUIRED)
ExternalProject_Add(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest
  GIT_TAG release-1.8.0
  GIT_SHALLOW TRUE
  INSTALL_COMMAND ""
  )

ExternalProject_Get_Property(googletest source_dir)
set(GTEST_INCLUDE_DIRS ${source_dir}/googletest/include)
set(GMOCK_INCLUDE_DIRS ${source_dir}/googlemock/include)

ExternalProject_Get_Property(googletest binary_dir)
set(GTEST_LIB ${binary_dir}/googlemock/gtest/libgtest.a)
set(GTEST_MAIN_LIB ${binary_dir}/googlemock/gtest/libgtest_main.a)
set(GMOCK_LIB ${binary_dir}/googlemock/libgmock.a)
set(GMOCK_MAIN_LIB ${binary_dir}/googlemock/libgmock_main.a)

