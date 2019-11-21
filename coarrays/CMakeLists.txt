cmake_minimum_required(VERSION 3.3)
project(coarrays Fortran)
enable_testing()

find_package(OpenCoarrays REQUIRED)

add_executable(coarrays main.f90)
target_link_libraries(coarrays PRIVATE OpenCoarrays::caf_mpi)
add_test(NAME Coarrays COMMAND coarrays)