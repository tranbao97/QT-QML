import QtQuick 2.12
import QtQuick.Controls 2.12

/*
ApplicationWindow { //QtQuicks.Controls
    width: 640
    height: 480
    visible: true
    title: qsTr("My Menu")

    Button{
        id: openMenuButton
        text: "Menu"
        onClicked:{
            menu.open()//Open các menu
        }
    }

    Label{
        id: label
        anchors.centerIn: parent
        text: "Selection one option"
        font.pointSize: 30; font.bold: true
    }

    Menu{
        id: menu
        y : openMenuButton.height //Đặt vị trí menu

        MenuItem{
            text: "Option 1"

            onClicked:{
                label.text = "OPTION 1"
            }
        }

        MenuItem{
            text: "Option 2"

            onClicked:{
                label.text = "OPTION 2"
            }
        }

        MenuItem{
            text: "Option 3"

            onClicked: {
                label.text = "OPTION 3"
            }
        }

        MenuItem{
            text: "Cancel"

            onClicked: {
                Qt.quit()
            }
        }

    }
}
*/



ApplicationWindow{
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("My Menu")

    /*
    Button{
        id: exitbutton
        text: "Cancel"

        anchors{
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
        }

        onClicked:{
            Qt.quit()
        }
    }
    */

    Row{
        id: buttonRow
        anchors.centerIn: parent
        //anchors.fill: parent
        spacing: 2

        Button{
            id: button1
            text: "Button 1"

            onClicked: {
                mainWindow.title = "Solution 1"
            }
        }
        Button{
            id: button2
            text: "Button 2"

            onClicked: {
                mainWindow.title = "Solution 2"
            }
        }
        Button{
            id: button3
            text: "Button 3"

            onClicked: {
                mainWindow.title = "Solution 3"
            }
        }
        Button{
            id: exitbutton
            text: "Exit button"

            onClicked: {
                mainWindow.title = "Cancel"
                Qt.quit()
            }
        }

    }

}
