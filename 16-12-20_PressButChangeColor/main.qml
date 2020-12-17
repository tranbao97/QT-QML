import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

//    ListView{
//        anchors.fill: parent
//        model: people
//        delegate:
//            Button{
//            id: increasebut
//            text: colore
//        }
//    }

    Row{
        id: row1
        spacing: 5

        Repeater{
            model: people
            Rectangle{
                width: 120
                height: 32
                color: colore
                Text{
                    anchors.centerIn: parent
                    text: colore
                }
                MouseArea{
                    onClicked: {
                        color_rec.color = parent.color
                    }
                }

            }
        }
    }
    Rectangle{
        id: color_rec
        anchors.top: row1.bottom
        anchors.topMargin: 10

        width: 100
        height: 100
        color: "yellow"
    }

}

