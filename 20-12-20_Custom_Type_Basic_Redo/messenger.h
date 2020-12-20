#ifndef MESSENGER_H
#define MESSENGER_H

#include <QObject>
#include <QQmlProperty>
#include <QTimer>
#include <QDebug>

class Messenger : public QObject{
    Q_OBJECT
    Q_PROPERTY(QString message READ message WRITE setMessage NOTIFY messageChanged)
public:
    Messenger(){
        qDebug() << "Messenger() construction";
        QTimer::singleShot(3000, this, SLOT(timerTimeout()));
    }

    Q_INVOKABLE bool postMessenger(const QString &msg){
        qDebug() << "[C++ Layer] call postMessenger method : " << msg;
        return true;
    }

    void setMessage(const QString &msg){
        if (m_message != msg){
            m_message = msg;
        }
        emit messageChanged();
    }

    QString message() const {
        return m_message;
    }

signals:
    void messageChanged();
    void newMessagePosted(const QString &subject);
private:
    QString m_message;
public slots:
    void refresh(){
        qDebug() << "Called the C++ slot";
    }

    void timerTimeout(){
        emit newMessagePosted("I am a girl");
    }
};

#endif // MESSENGER_H
