import QtQuick 2.0
import QtQuick.Layouts 1.12

Item {
    id: root

    Flickable{
        id: flickable
        x: 0
        y: 0
        width: 354
        height: 768

        clip: true

        //contentWidth: 250
        contentHeight: 1550
        boundsBehavior: Flickable.StopAtBounds


        Rectangle{
            id: background
            x: 0
            width: 354
            height: 1550
            color: "#eec1a2"
        }

        ColumnLayout{
            x: 52
            y: 0
            spacing: 64

            CoffeeButton{
                id: capuccinoButton
                text: "Capuccino"
            }

            CoffeeButton{
                id: espressoButton
                text: "Espresso"
                source: "images/icons/coffees/Espresso.png"
            }

            CoffeeButton{
                id: latteButton
                text: "Latte"
                source: "images/icons/coffees/Latte.png"
            }

            CoffeeButton{
                id: macchiatoButton
                text: "Macchiato"
                source: "images/icons/coffees/Macchiato.png"
            }

            CoffeeButton{
                id: americanoButton
                text: "Americano"
                source: "images/icons/coffees/Americano.png"
            }
        }
    }
}
