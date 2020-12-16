import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    width: 720
    height: 480
    visible: true
    title: qsTr("Hello World")


    Row {
        spacing: 2

        Repeater {
            model: ["brown", "red", "orange", "yellow", "lightgreen", "violet"]

            Rectangle {
                color: modelData
                width: 50
                height: 50
                radius: 3
                Text:{
                    text: colore
                }
            }
        }
    }
}
