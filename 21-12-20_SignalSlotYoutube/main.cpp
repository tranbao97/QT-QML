#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "WaterCooler.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    WaterCooler Cooler;

    return app.exec();
}
