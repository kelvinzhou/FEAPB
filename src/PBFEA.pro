#-------------------------------------------------
#
# Project created by QtCreator 2024-2-26
#
#-------------------------------------------------
QT       += core gui printsupport

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = FEAPB
TEMPLATE = app
CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    Assembly.cpp \
    DefineProblem.cpp \
    DirichletBoundaryConditions.cpp \
    ElementMatrix.cpp \
    JacobiPolynomials.cpp \
    NumInt.cpp \
    PiezoAreaMoments.cpp \
    QCustomPlot/qcustomplot.cpp \
    ReadDataFile.cpp \
    TimeIntegration.cpp \
    hpBasis1D.cpp \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    Assembly.h \
    BasisFunctions.h \
    DefineProblem.h \
    DirichletBoundaryConditions.h \
    ElementMatrix.h \
    JacobiPolynomials.h \
    NumInt.h \
    PiezoAreaMoments.h \
    QCustomPlot/qcustomplot.h \
    ReadDataFile.h \
    TimeIntegration.h \
    find.h \
    hpBasis1D.h \
    mainwindow.h

FORMS += \
    mainwindow.ui

QMAKE_CXXFLAGS += -Wno-unused
QMAKE_CXXFLAGS += -pipe
QMAKE_CXXFLAGS += -DNDEBUG
#QMAKE_CXXFLAGS = -msse2
#QMAKE_CXXFLAGS += -ffast-math -funroll-loops -march=native -mtune=native -mfpmath=sse -finline-functions
QMAKE_CXXFLAGS +=-O2 -ffast-math -funroll-loops -finline-functions

INCLUDEPATH += E:\library\eigen-3.2.10
INCLUDEPATH += E:\library\boost_1_66_0

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
