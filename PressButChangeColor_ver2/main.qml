import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    id: windows
    width: 640
    height: 480
    visible: true
    title: qsTr("Change Color")

    Rectangle{
        id: butchangecolor
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.top: parent.top
        anchors.topMargin: 10
        width: 100
        height: 50
        radius: 5
        color: colors.color
        MouseArea{
            anchors.fill: parent
            onClicked: {
                windows.color= butchangecolor.color
            }
        }
    }
    TextField{
        id: textchangecolor
        width:200
        height: butchangecolor.height
        anchors.left: butchangecolor.right
        anchors.leftMargin: 10
        anchors.top: butchangecolor.top
        placeholderText: "Enter color"
        Button{
            width: 50
            anchors.left: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            text: "OK"
            onClicked: {
                colors.color= textchangecolor.text
            }
        }
    }
}
