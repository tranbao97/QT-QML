import QtQuick 2.12
import QtQuick.Window 2.12
import Messenger 1.0

Rectangle {
    width: 640
    height: 480
    visible: true

    Text {
        id: mytext
        anchors.centerIn: parent
        font.pixelSize: 25
        text: mymsg.message
        Component.onCompleted: {
            mymsg.message = "Hello world"
        }

        Msg{
            id: mymsg
            onNewMessagePosted: {
                console.log("Message received: ", subject);
                mytext.font.pixelSize = 25
                mytext.text = subject
            }
        }

    }
}
