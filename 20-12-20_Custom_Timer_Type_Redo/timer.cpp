#include <QTimer>
#include <QDebug>

#include "timer.h"

Timer::Timer(QObject* parent) : QObject(parent), m_timer(new QTimer(this)){
    connect(m_timer, SIGNAL(timeout()), this, SIGNAL(timeout()));
}

int Timer::interval(){
    return m_timer->interval();
}

void Timer::setInterval(int sec){
    if (m_timer->interval() != sec){
        m_timer->setInterval(sec);
        emit intervalChanged();
    }
}

bool Timer::isActive(){
    return m_timer->isActive();
}

Q_INVOKABLE void Timer::start(){
    if (!m_timer->isActive()){
        m_timer->start();
        emit activeChanged();
    }
}

Q_INVOKABLE void Timer::stop(){
    if(m_timer->isActive()){
        m_timer->stop();
        emit activeChanged();
    }
}
//int interval();
//void setInterval(int sec);
//bool isActive();

//Q_INVOKABLE void start();
//Q_INVOKABLE void stop();

