#ifndef MYPERSON_H
#define MYPERSON_H

#include <QObject>

class MyPerson : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString name READ name WRITE set_name NOTIFY name_changed)
    Q_PROPERTY(int age READ age WRITE set_age NOTIFY age_changed)
    Q_PROPERTY(QString colore READ colore WRITE set_colore NOTIFY colore_changed)
public:
    explicit MyPerson(QObject *parent = nullptr);
    MyPerson(const QString &name, int age, QString colore, QObject *parent = nullptr);

    QString name() const{
        return m_name;
    }

    int age(){
        return m_age;
    }

    QString colore(){
        return m_colore;
    }

    void set_name(QString name);
    void set_age(int age);
    void set_colore(QString colore);
signals:
    void name_changed();
    void age_changed();
    void colore_changed();

private:
    QString m_name;
    int m_age;
    QString m_colore;

};


#endif // MYPERSON_H
