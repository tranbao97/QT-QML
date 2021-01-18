import QtQuick 2.0
import QtQuick.Controls 2.12

Item {
    id: root

    width: 1024 //+ 366
    height: 768

    Rectangle {
        id: rectangle
        color: "#443224"
        anchors.fill: parent
    }

    Rectangle {
        id: rightSideBar

        x: 658
        y: 0
        width: 366
        height: 768
        color: "#eec1a2"
        visible: false
        anchors.right: parent.right

        Column {
            spacing: 32
//            anchors.bottom: brewButton.top
            anchors.bottomMargin: 100
            anchors.horizontalCenter: parent.horizontalCenter

            Slider {
                id: milkSlider
                width: 256
                height: 48

                to: 10
                value: 6

                Image {
                    x: 48
                    y: -12
                    source: "images/icons/contents/milk.png"
                }
            }
            Slider {
                id: sugarSlider

                width: 256
                height: 48
                to: 10
                stepSize: 1
                value: 0

                Image {
                    x: 48
                    y: -12
                    source: "images/icons/contents/sugar.png"
                }
            }
        }

    }

    SideBar {
        id: sideBar
        width: 366
    }
}
