import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ListView{
        anchors.fill: parent
        model: people
        delegate:
            RowLayout{
                width: parent.width
                Text{
                    text: name
                }
                Text{
                    text: age
                }
                Button{
                    id: increasebut
                    text: colore
                    onClicked:{
                        age++;
                    }



                }
        }
    }
}
