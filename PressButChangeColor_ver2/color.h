#ifndef COLOR_H
#define COLOR_H
#include <QObject>
#include <QQmlProperty>
#include <QDebug>
#include <QTimer>

class Color : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString  color
               READ     color
               WRITE    setColor
               NOTIFY   colorChange)
public:
    void setColor(const QString &color)
    {
        m_color = color;
        emit colorChange();
    }

    QString color() const
    {
        return m_color;
    }

signals:
    void colorChange();


private:
    QString m_color;

};


#endif // COLOR_H
