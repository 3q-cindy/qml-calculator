import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Item {
    property alias text: handleMod.text
    signal handleClick();

    Button {
        width: parent.width
        height: parent.height
        background: Rectangle {
            id: handleModBcg
            color: "#181830"
            border.color: "#444450"
            radius: 3
        }
        Text {
            id: handleMod
            anchors.fill: parent
            height: parent.height
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 18
            font.family: "Helvetica"
            font.bold: true
            color: "#FFFFFF"
            text:  "%"
        }
        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onEntered:{
                //hover
                handleModBcg.color = "#202045"
            }
            onExited: {
                handleModBcg.color = "#181830";
            }
            onClicked: {
                handleClick();
            }
        }
    }
}
