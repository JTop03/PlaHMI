cmake_minimum_required(VERSION 3.16)

project(PlaHMI VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appPlaHMI
    main.cpp
)

qt_add_qml_module(appPlaHMI
    URI PlaHMI
    QML_FILES
        qml/Main.qml
        qml/screens/ColorSettings.qml
        QML_FILES qml/screens/MainScreen.qml
        QML_FILES qml/screens/SpeedSettings.qml
        QML_FILES qml/screens/ColorOverview.qml
        QML_FILES qml/components/StatusTabs.qml
        QML_FILES qml/components/StartButton.qml
        QML_FILES qml/layouts/MainScreenLayout.qml
        QML_FILES qml/layouts/ColorOverviewLayout.qml
        QML_FILES qml/layouts/ColorSettingsLayout.qml
        QML_FILES qml/theme/Colors.qml
        QML_FILES qml/theme/Fonts.qml
        QML_FILES qml/theme/Metrics.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appPlaHMI PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appPlaHMI
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appPlaHMI
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appPlaHMI
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
