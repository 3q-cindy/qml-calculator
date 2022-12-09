import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Item {
    property alias text: handleMod.text
    signal handleClick();
    function keyDown(){
        handleClick();
        handleModBcg.color = "#303050"
        timer.startTimer(() =>{
            handleModBcg.color = "#252540";
        }, 150)
    }
    Timer {
        id: timer

        // Start the timer and execute the provided callback on every X milliseconds
        function startTimer(callback, milliseconds) {
            timer.interval = milliseconds;
//            timer.repeat = true;
            timer.triggered.connect(callback);
            timer.start();
        }

        // Stop the timer and unregister the callback
        function stopTimer(callback) {
            timer.stop();
            timer.triggered.disconnect(callback);
        }
    }

    Layout.fillHeight: true
    Layout.fillWidth: true
    Button {
        width: parent.width
        height: parent.height
        background: Rectangle {
            id:handleModBcg
            color: "#252540"
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
            text: "123"
        }
        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onEntered:{
                //hover
                handleModBcg.color = "#303050"
            }
            onExited: {
                handleModBcg.color = "#252540";
            }
            onClicked: {
                handleClick();
            }
        }
    }
}
