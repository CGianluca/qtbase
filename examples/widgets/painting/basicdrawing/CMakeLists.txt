# Generated from basicdrawing.pro.

cmake_minimum_required(VERSION 3.14)
project(basicdrawing LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

set(INSTALL_EXAMPLEDIR "examples/widgets/painting/basicdrawing")

find_package(Qt6 COMPONENTS Core)
find_package(Qt6 COMPONENTS Gui)
find_package(Qt6 COMPONENTS Widgets)

add_qt_gui_executable(basicdrawing
    main.cpp
    renderarea.cpp renderarea.h
    window.cpp window.h
)
target_link_libraries(basicdrawing PUBLIC
    Qt::Core
    Qt::Gui
    Qt::Widgets
)


# Resources:
set(basicdrawing_resource_files
    "images/brick.png"
    "images/qt-logo.png"
)

qt6_add_resources(basicdrawing "basicdrawing"
    PREFIX
        "/"
    FILES
        ${basicdrawing_resource_files}
)

install(TARGETS basicdrawing
    RUNTIME DESTINATION "${INSTALL_EXAMPLEDIR}"
    BUNDLE DESTINATION "${INSTALL_EXAMPLEDIR}"
    LIBRARY DESTINATION "${INSTALL_EXAMPLEDIR}"
)
