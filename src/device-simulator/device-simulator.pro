CONFIG      += qt c++11
QT          += serialbus serialport widgets

TARGET      = device-simulator
target.path = $${PREFIX}/device-simulator
INSTALLS    += target

SOURCES     += main.cpp \
            mainwindow.cpp \
            settingsdialog.cpp

HEADERS     += mainwindow.h \
            settingsdialog.h \

FORMS       += mainwindow.ui \
            settingsdialog.ui

RESOURCES   += device-simulator.qrc
