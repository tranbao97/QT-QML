#include "myperson.h"

MyPerson :: MyPerson (QObject *parent) : QObject(parent){
    m_age = 0;
}

MyPerson :: MyPerson (const QString &name, int age, QString colore, QObject *parent) : QObject(parent)
{
    m_name = name;
    m_age = age;
    m_colore = colore;
}

void MyPerson :: set_name(QString name){
    if(m_name != name){
        m_name = name;
        emit name_changed();
    }
}
void MyPerson :: set_age(int age){
    if(m_age != age){
        m_age = age;
        emit age_changed();
    }
}

void MyPerson :: set_colore(QString colore){
    if(m_colore != colore){
        m_colore = colore;
        emit colore_changed();
    }
}


