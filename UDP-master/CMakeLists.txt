cmake_minimum_required(VERSION 3.16)
project(UDP C)

set(CMAKE_C_STANDARD 99)

add_executable(UDP main.c Server.c Server.h Client.c Client.h)