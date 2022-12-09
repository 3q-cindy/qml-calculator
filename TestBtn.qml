import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3


Item {
      Rectangle{
        id: textbutton
        width: 50
        height: 50
        color: "#181830"
        Row{
            Image {
                id: qtImage
                height: 50
                width: 50
                smooth: true
                source: "./image/qtlogo.png"
            }
        }
        MouseArea {
            id: mouseRegion
            anchors.fill: parent;
            acceptedButtons: Qt.LeftButton | Qt.RightButton // 激活右键（别落下这个）

            onClicked: {

                if (mouse.button === Qt.RightButton) { // 右键菜单
                    //
                    contentMenu.popup()
                }
            }
            hoverEnabled: true
            onEntered:{
                //hover
                textbutton.color = "#202045"
            }
            onExited: {
                textbutton.color = "#181830";
            }
        }
        Menu {
            title: "Edit"
            id: contentMenu
            width: 100
            MenuItem {
                height: 35
                Rectangle{
                    color: "#000000"
                    anchors.fill: parent
                    Text {
                        id: cutText
                        color: "#ffffff"
                        anchors.centerIn: parent
                        text: "Cut"
                        font.pixelSize: 18
                    }
                }
                onClicked: {
                    console.log("CUT")
                }
            }

            MenuItem {
                height: 35
                text: "Copy"
                onTriggered: {}
            }

            MenuItem {
                height: 35
                text: "Paste"
                onTriggered: {}
            }

            MenuSeparator { }

            Menu {
                height: 35
                title: "More Stuff"

                MenuItem {
                    text: "Do Nothing"
                }
            }
        }
      }

}
