cmake_minimum_required(VERSION 3.13)
project(find_dot_linux_app C)

# Enable C99
set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)

# Define source files
set(SOURCES
    src/main.c
    src/accelerometer.c
)

# Add include paths
include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_CURRENT_SOURCE_DIR}/../shared
)

# Define the executable
add_executable(find_dot_linux_app ${SOURCES})

# Link libraries
target_link_libraries(find_dot_linux_app pthread)

# Post-build: Copy to shared R5 folder
add_custom_command(TARGET find_dot_linux_app POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E make_directory $ENV{HOME}/cmpt433/public/r5/
    COMMAND ${CMAKE_COMMAND} -E copy $<TARGET_FILE:find_dot_linux_app> $ENV{HOME}/cmpt433/public/r5/find_dot_linux_app
    COMMENT "📦 Copying find_dot_linux_app to ~/cmpt433/public/r5/"
)