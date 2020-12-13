import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.0
import QtGraphicalEffects 1.0

ApplicationWindow {
    width: 720
    height: 720
    visible: true
    title: qsTr("Hello World")


/*
//    Thay đổi tất cả màu trong bức ảnh
*/

    Image{
        id: image
        x: 0
        source: "/files/Image/circle - Copy.jpg"
        //sourceSize: Qt.size(parent.width, parent.height)//Vừa với kích thước của khung console
        smooth: true
        visible: true

        ColorOverlay{
            anchors.fill: image
            color: "#ff0000"  // make image like it lays under red glass
        }

        MouseArea{
            anchors.fill: parent
            onClicked:{
                console.info("image clicked!!!")

            }
        }
    }

//    Image {
//        id: image
//        source: "/files/Image/empty-circle.svg"
//        //sourceSize: Qt.size(parent.width, parent.height)
//        smooth: true
//        fillMode: Image.Pad
//        MouseArea{
//            anchors.fill: parent
//            onClicked:{
//                console.info("image clicked!!!")
//            }

//            layer {
//                enabled: true
//                effect: ColorOverlay {
//                    anchors.fill: image
//                    color: "#ff0000ff"
//                }
//            }
//        }
//    }


}
