#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQuickStyle>
#include "myperson.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QQuickStyle::setStyle("Material");
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    QObjectList people;
    people.append(new MyPerson("Juan", 20, "black"));
    people.append(new MyPerson("Maria", 20, "brown"));
    people.append(new MyPerson("Anna", 20, "red"));
    people.append(new MyPerson("Peter", 20, "orange"));

    engine.rootContext()->setContextProperty("people", QVariant::fromValue(people));

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
