import QtQuick 2.12

Rectangle
{
    id: button
    property alias image: image
    property alias mousearea: mousearea
    property alias text: text.text

    width: 90
    height: 30
    color: "transparent"

    BorderImage
    {
        id: image
        source: mousearea.pressed ? "qrc:/img/buttons/cyan_hover.png" : "qrc:/img/buttons/cyan.png"
        width: parent.width
        height: parent.height
        border { left: 25; top: 25; right: 25; bottom: 25 }
        horizontalTileMode: BorderImage.Stretch
        verticalTileMode: BorderImage.Round
    }

    MouseArea
    {
        id: mousearea
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton
        cursorShape: "PointingHandCursor"
    }

    Text
    {
        id: text
        anchors.centerIn: parent
        text: "Button"
        color: "white"
        font.bold: true
    }
}

