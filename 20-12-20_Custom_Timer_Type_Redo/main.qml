import QtQuick 2.12
import QtQuick.Window 2.12
import MyCustomTimer 1.0


Rectangle{
    width: 300
    height: 200

    property int timerCnt: 0

    Image{
        id: loadimage
        source: "qrc:/images/loading.png"
        width: 100
        height: 100
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
    }

    PropertyAnimation{
        id: loadanimation
        target: loadimage
        loops: Animation.Infinite
        from: 0
        to: 360
        property: "rotation"
        duration: 2000
        running: false
    }

    Text{
        text: timer.active ? qsTr("Timer is running.") : qsTr("Timer stop state.")
        font.pixelSize: 24
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
    }

    MyTimer{
        id: timer
        interval: 1000
        onTimeout: {
            console.log("Timer Call :", timerCnt);
        }
    }

    MouseArea{
        anchors.fill: parent
        onClicked:{
            if (timer.active == false){
                console.log("Timer start");
                timer.start();
                loadanimation.running = true
            }
            else{
                console.log("Timer stop");
                timer.stop();
                loadanimation.running = false
            }
        }
    }




}

