cmake_minimum_required(VERSION 3.10)
project(MyCalculator)

set(CMAKE_CXX_STANDARD 11)

# Створити бібліотеку
add_library(calculator STATIC calculator.cpp)

# Створити виконуваний файл
add_executable(calculator_app main.cpp)

# Зв'язати бібліотеку з виконуваним файлом
target_link_libraries(calculator_app PRIVATE calculator)

# Вказати систему збирання Ninja
set(CMAKE_MAKE_PROGRAM ninja)
