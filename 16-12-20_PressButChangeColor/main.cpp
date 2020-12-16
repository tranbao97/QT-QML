#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQuickStyle>
#include "changecolor.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    QObjectList choice_color;
    choice_color.append(new ChangeColor("brown"));
    choice_color.append(new ChangeColor("red"));
    choice_color.append(new ChangeColor("orange"));
    choice_color.append(new ChangeColor("yellow"));
    choice_color.append(new ChangeColor("green"));

    engine.rootContext()->setContextProperty("choice_color", QVariant::fromValue(choice_color));

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
