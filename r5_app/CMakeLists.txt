# SPDX-License-Identifier: Apache-2.0

cmake_minimum_required(VERSION 3.20.0)
find_package(Zephyr REQUIRED HINTS $ENV{ZEPHYR_BASE})
project(neopixel_r5)

# Add include paths (for shared memory headers)
include_directories(
  ${CMAKE_CURRENT_SOURCE_DIR}/../shared
)

# Add application source file
target_sources(app PRIVATE src/neopixel_driver.c)

target_include_directories(app PRIVATE include)