import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 400
    height: 400
    visible: true
    title: qsTr("Bai Tap")

    Rectangle{
        id : parentRectangle
        width: 400; height: 400
        color: "grey"

        Rectangle{
            x: 50; y: 50
            color: "lightblue"
            width: 300; height: 150

            Rectangle{
                x: 50; y: 50
                width: 50; height: 50
                color: "white"
            }
        }

        Rectangle{
            x: 50; y: 200
            color: "green"
            width: 300; height: 150
            clip: true //Khong cho phep lop con ra khoi phạm vi cua lop cha

            Rectangle{
                x: 100; y: 50
                width: 150
                height: 50
                color: "blue"
            }

        }
    }

    //    TextInput {
    //        id: textElement
    //        x: 50; y: 25
    //        text: "Qt Quick"
    //        font.family: "Helvetica"; font.pixelSize: 50
    //    }

    //    Rectangle {
    //        x: 50; y : 75; height: 5
    //        width: textElement.width
    //        color: "green"
    //    }


    //    Rectangle{
    //        x: 100; y: 50
    //        height: 100
    //        width: foo()
    //        color: "lightblue"

    //        function foo(){
    //            console.log("Hello world", height)
    //            return height*2
    //        }
    //    }

}
