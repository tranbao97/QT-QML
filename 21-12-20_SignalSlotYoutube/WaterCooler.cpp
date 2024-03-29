#include "WaterCooler.h"
#include "Person.h"

WaterCooler :: WaterCooler(QObject *parent) : QObject(parent)
{
    Person Cathy;
    Person Bob;
    Person Sally;

    Cathy.Name = "Chatty Cathy";
    Bob.Name = "Poor Bob";
    Sally.Name = "Silly Sally";

    connect(&Cathy, SIGNAL(Speak(QString)), &Bob, SLOT(Listen(QString)));
    connect(&Cathy, SIGNAL(Speak(QString)), &Sally, SLOT(Listen(QString)));
    Cathy.Gossip("I heard mark is bald");
}
