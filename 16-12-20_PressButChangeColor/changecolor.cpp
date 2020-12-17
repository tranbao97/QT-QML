#include "changecolor.h"

ChangeColor :: ChangeColor (QObject *parent) : QObject(parent){
    m_colore = "black";
}

ChangeColor :: ChangeColor (QString colore, QObject *parent) : QObject(parent)
{
    m_colore = colore;
}

void ChangeColor :: set_colore(QString colore){
    if(m_colore != colore){
        m_colore = colore;
        emit colore_changed();
    }
}


