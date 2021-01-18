import QtQuick 2.0
import QtQuick.Controls 2.12

Item {
    id: root

    property bool showLabels: true
    property real sugarAmount: 2
    property real milkAmount: 4
    property real coffeeAmount: 4

    x: 354
    y: 0
    width: 670
    height: 768

    Rectangle{
        id: rectangle
        color: "#443224"
        anchors.fill: parent

        Image {
            id: background
            x: 12
            y: 170
            source: "images/cup structure/cup elements/coffee_cup_back.png"
        }

        Item{
            id: foam
            x: 12
            width: 457
            anchors.bottom: background.bottom
            anchors.top: background.top
            anchors.topMargin: milk.anchors.topMargin - 40
            clip: true

            Image {
                anchors.bottom: parent.bottom
                source: "images/cup structure/liquids/liquid_foam.png"
            }
        }

        Item{
            id: milk
            x: 12
            width: 457
            anchors.bottom: background.bottom
            anchors.top: background.top
            anchors.topMargin: 400 - coffee.height - root.milkAmount * 15 + 20
            clip: true

            Image{
                source: "images/cup structure/liquids/liquid_milk.png"
                anchors.bottom: parent.bottom
            }
        }


        Item{
            id: coffee
            x: 12
            width: 457
            height: root.coffeeAmount * 40
            anchors.bottom: background.bottom
            clip: true

            Image{
                anchors.bottom: parent.bottom
                source: "images/cup structure/liquids/liquid_coffee.png"
            }
        }

        Image{
            id: cupfront
            x: 11
            y: 170
            source: "images/cup structure/cup elements/coffee_cup_front.png"
        }





    }


}
