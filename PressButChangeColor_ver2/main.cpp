#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QQmlContext>
#include <qqml.h>
#include "color.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQuickView viewer;
    Color colors;

    viewer.engine()->rootContext()->setContextProperty("colors", &colors);
    viewer.setSource(QUrl( "qrc:///main.qml" ) );

    return app.exec();
}

