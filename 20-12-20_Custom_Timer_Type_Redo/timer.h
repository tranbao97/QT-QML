#ifndef TIMER_H
#define TIMER_H
#include "QObject"

class QTimer;
class Timer : public QObject{
    Q_OBJECT
    Q_PROPERTY(int interval READ interval WRITE setInterval NOTIFY intervalChanged)
    Q_PROPERTY(bool active READ isActive  NOTIFY activeChanged)

public:
    explicit Timer(QObject *parent = nullptr);
    int interval();
    void setInterval(int sec);
    bool isActive();

    Q_INVOKABLE void start();
    Q_INVOKABLE void stop();

signals:
    void intervalChanged();
    void activeChanged();
    void timeout();

//    Q_INVOKABLE bool postMessenger(const QString &msg){
//        qDebug() << "[C++ Layer] call postMessenger method : " << msg;
//        return true;
//    }

private:
    QTimer* m_timer;//dung con tro vi su dung chinh m_timer nay de tinh tg
};

#endif // TIMER_H
