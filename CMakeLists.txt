cmake_minimum_required(VERSION 3.10)
project(calculator_project)

# Встановлення стандарту C++
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Створення бібліотеки (статичної або динамічної)
add_library(calculator_lib STATIC calculator.cpp)

# Додавання виконуваного файлу
add_executable(calculator_app main.cpp)

# Лінкування виконуваного файлу з бібліотекою
target_link_libraries(calculator_app calculator_lib)
