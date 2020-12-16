#ifndef CHANGECOLOR_H
#define CHANGECOLOR_H
#include <QObject>

class ChangeColor : public QObject{
    Q_OBJECT
    Q_PROPERTY(QString colore READ colore WRITE set_colore NOTIFY colore_changed)
public:
    explicit ChangeColor(QObject *parent = nullptr);
    ChangeColor(QString colore, QObject* parent = nullptr);

    QString colore(){
        return m_colore;
    }

    void set_colore(QString &colore);
signals:
    void colore_changed();

private:
    QString m_colore;

};

#endif // CHANGECOLOR_H
