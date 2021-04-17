cmake_minimum_required(VERSION 3.16)
project(TCP C)

set(CMAKE_C_STANDARD 99)

add_executable(TCP main.c cmake-build-debug/Server.c cmake-build-debug/Server.h cmake-build-debug/Client.c cmake-build-debug/Client.h)