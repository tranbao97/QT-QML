#include "changecolor.h"

ChangeColor :: ChangeColor (QObject *parent) : QObject(parent){
    m_colore = "lightyellow";
}

ChangeColor :: ChangeColor (QString colore, QObject *parent) : QObject(parent){
    m_colore = colore;
}

void ChangeColor :: set_colore(QString &color){
    if (m_colore != color){
        m_colore = color;
        emit colore_changed();
    }
}
