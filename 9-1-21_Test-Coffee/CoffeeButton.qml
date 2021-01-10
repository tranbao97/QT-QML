import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.3
Image{
    id: root
    source: "images/icons/coffees/cappucino.png"
    signal clicked

    property int duration: 250
    property alias text: label.text

    MouseArea{
        anchors.fill: parent
        onClicked: root.clicked()
        onPressed: {
            grow.visible = true
            animation1.start()
            animation2.start()
        }
    }

    //Viền bao xung quanh hình ảnh
    Rectangle{
        id: grow
        visible: false
        width: 250
        height: 250
        color: '#00000000'
        radius: 125
        scale: 1.05
        border.color: '#ffffff'
        //Component.onCompleted: console.log("chu nhat")
    }

    //Text bên dưới hình ảnh
    Label{
        id: label
        x: 292
        y: 252
        text: qsTr("Label")
        anchors.horizontalCenter: parent.horizontalCenter
        color: "#443224"
        font.pixelSize: 28
    }

    //Phóng to viền bao xung quanh hình ảnh
    PropertyAnimation{
        id: animation1
        target: grow
        duration: root.duration
        loops: 1
        from: 1.05
        to: 1.2
        property: "scale"
    }

    ParallelAnimation{
        id: animation2

        //Phóng to sau đó làm mờ viền bao
        SequentialAnimation{
            PropertyAnimation{
                target: grow
                duration: root.duration
                loops: 1
                from: 0.2
                to: 1.0
                property:"opacity"
            }
            PropertyAnimation{
                target: grow
                duration: root.duration
                loops: 1
                from: 1.0
                to: 0
                property:"opacity"
            }
            PropertyAction{
                target: grow
                property: "visible"
                value: false
            }
        }

        //Làm to độ dày của viền bao
        SequentialAnimation{
            PropertyAction{
                target: grow
                property: "border.width"
                value: 20
            }
            PauseAnimation{
                duration: 200
            }
            PropertyAnimation{
                target: grow
                duration: root.duration
                loops: 1
                from: 20
                to: 10
                property: "border.width"
            }
        }
    }
}

