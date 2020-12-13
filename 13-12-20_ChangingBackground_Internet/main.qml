import QtQuick.Window 2.12
import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.0
import QtGraphicalEffects 1.0

Window {
    width: 720
    height: 720
    visible: true
    title: qsTr("Change background!!!")

    Rectangle
    {
      id: rectangleLayout
      anchors.fill: parent

      Image
      {
        id: imageBackground
        source: "qrc:/img/backgrounds/cyan.jpg"
        width: parent.width
        height: parent.height
        fillMode: Image.Stretch
      }

      Button
      {
        id: buttonDesignBlack
        anchors.top: rectangleHeader.bottom
        anchors.left: rectangleLayout.left
        anchors.topMargin: 30
        anchors.leftMargin: 10
        anchors.horizontalCenter: rectangleLayout.horizontalCenter
        height: 50

        mousearea.onClicked:
        {
          // there I have to put the code to change design
        }
        text: "Button black"
      }
      // another 14 instances of 'Button'


}
}
