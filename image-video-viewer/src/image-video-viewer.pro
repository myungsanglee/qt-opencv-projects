QT += quick

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# For OpenCV in Windows
#INCLUDEPATH += C:\opencv\build\install\include
#LIBS += C:\opencv\build\install\x64\mingw\bin\libopencv_world412.dll
INCLUDEPATH += C:\opencv\build\include
LIBS += C:\opencv\build\x64\vc15\lib\opencv_world412.lib

# For Opencv in Ubuntu
#CONFIG += link_pkgconfig
#PKGCONFIG += opencv4

SOURCES += \
        main.cpp \
        opencv_image_provider.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    opencv_image_provider.h