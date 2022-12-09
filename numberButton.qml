import QtQuick 2.15
import QtQuick.Controls 2.5

Item {
     property Component mycomponent: comp1
    Button {
        id: button_0
        width: parent.width / 3
        height: 100
        anchors.margins: 10
        background: Rectangle {
                color: "#4DABFB"
                radius: 10
            }
            Text {
                id: controlText
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 30
                color: "#FFFFFF"
                text: "0"
            }
        onClicked: {
            console.log("0")
        }
    }
}
