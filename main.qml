import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtMultimedia 5.15
import "./pageMain.js" as HandelFun
import "./components" //qml只能看同一層的東西，必須載入

Window {
    id: mainWindow
    width: 400
    height: 600
    visible: true
    title: qsTr("Calculator")
    minimumHeight: 600
    minimumWidth: 400
    color: "#111120"

    Rectangle {
        x: 5
        y: 5
        id: inputResultRect
        width: parent.width - 10
        height: 80
        color: "#111120"
        radius: 5
        Text {
            id: inputResult
            text: qsTr("0")
            height: parent.height
            font.family: "Helvetica"
            font.bold: true
            color: "#ffffff"
            font.pointSize: 35
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.right: parent.right
            anchors.rightMargin: 20
        }
    }
    Rectangle {
        x: 5
        y: 80
        width: parent.width - 10
        height: 40
        color: "#111120"
        Text {
            id: inputSequence
            text: qsTr("")
            height: parent.height
            font.family: "Helvetica"
            font.bold: true
            color: "#ffffff"
            font.pointSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.right: parent.right
            anchors.rightMargin: 20
        }
    }

    RowLayout {
        id: calcBtns
        x: 5
        y: 120
        spacing: 5
        width: parent.width - 10
        height: 60
        DarkButton {
            text: "%"
            onHandleClick: {
                inputSequence.text = HandelFun.handleSequence(inputSequence.text, "%");
                inputResult.text = 0;
            }
        }

        DarkButton {
            id: keyclearenter
            text: "CE"
            onHandleClick: {
                inputSequence.text = HandelFun.clearSequence();
                inputResult.text = "0";
            }
        }
        DarkButton {
            id: keyclear
            text: "C"
            onHandleClick: {
                inputSequence.text = HandelFun.clearSequence();
                inputResult.text = "0";
            }
        }
        DarkButton {
            id: keyback
            text: "↲ "
            onHandleClick: {
               inputSequence.text = HandelFun.backSequence(inputSequence.text);
               inputResult.text = HandelFun.backSequence(inputResult.text);
            }
        }
    }
    RowLayout {
        id: calcBtns2
        x: 5
        y: 185
        spacing: 5
        width: parent.width - 10
        height: 60
        DarkButton {
            Layout.fillHeight: true
            Layout.fillWidth: true
            text: "⅟x"
            onHandleClick: {
                inputSequence.text = HandelFun.handleFra(inputResult.text);
                inputResult.text = HandelFun.handleFra(inputResult.text);
            }
        }
        DarkButton {
            Layout.fillHeight: true
            Layout.fillWidth: true
            text: "x²"
            onHandleClick: {
                inputSequence.text = Math.pow(inputResult.text, 2);
                inputResult.text = Math.pow(inputResult.text, 2);
            }
        }
        DarkButton {
            Layout.fillHeight: true
            Layout.fillWidth: true
            text: "√"
            onHandleClick: {
                inputSequence.text = Math.pow(inputResult.text, 1/2);
                inputResult.text = Math.pow(inputResult.text, 1/2);
            }
        }
        DarkButton {
            id: keydiv
            Layout.fillHeight: true
            Layout.fillWidth: true
            text: "÷"
            onHandleClick: {
                inputSequence.text = HandelFun.handleSequence(inputSequence.text, "÷" );
                inputResult.text = "0";
            }
        }
    }

    GridLayout {
           id: grid
           x: 5
           y: 250
           width: parent.width - 10
           height: 240
           rows: 4
           columns: 5
           LightButton {
               id: key1
               Layout.columnSpan: 1
               Layout.rowSpan: 1
               Layout.row: 3
               Layout.column: 1
               text: "1"
               onHandleClick: {
                   inputResult.text = HandelFun.handleNumber(inputResult.text, "1")
                   inputSequence.text = HandelFun.handleSequence(inputSequence.text, "1" );
               }
           }
           LightButton {
               id: key2
               Layout.columnSpan: 1
               Layout.rowSpan: 1
               Layout.row: 3
               Layout.column: 2
                text: "2"
                onHandleClick: {
                    inputResult.text = HandelFun.handleNumber(inputResult.text, "2")
                    inputSequence.text = HandelFun.handleSequence(inputSequence.text, "2" );
                }
           }
           LightButton {
               id: key3
               Layout.columnSpan: 1
               Layout.rowSpan: 1
               Layout.row: 3
               Layout.column: 3
                text: "3"
                onHandleClick: {
                    inputResult.text = HandelFun.handleNumber(inputResult.text, "3")
                    inputSequence.text = HandelFun.handleSequence(inputSequence.text, "3" );
                }
           }
           LightButton {
               id: key4
               Layout.columnSpan: 1
               Layout.rowSpan: 1
               Layout.row: 2
               Layout.column: 1
                text: "4"
                onHandleClick: {
                    inputResult.text = HandelFun.handleNumber(inputResult.text, "4")
                    inputSequence.text = HandelFun.handleSequence(inputSequence.text, "4" );
                }
           }
           LightButton {
               id: key5
               Layout.columnSpan: 1
               Layout.rowSpan: 1
               Layout.row: 2
               Layout.column: 2
                text: "5"
                onHandleClick: {
                    inputResult.text = HandelFun.handleNumber(inputResult.text, "5")
                    inputSequence.text = HandelFun.handleSequence(inputSequence.text, "5" );
                }
           }
           LightButton {
               id: key6
               Layout.columnSpan: 1
               Layout.rowSpan: 1
               Layout.row: 2
               Layout.column: 3
                text: "6"
                onHandleClick: {
                    inputResult.text = HandelFun.handleNumber(inputResult.text, "6")
                    inputSequence.text = HandelFun.handleSequence(inputSequence.text, "6" );
                }
           }
           LightButton {
               id: key7
                Layout.columnSpan: 1
                Layout.rowSpan: 1
                Layout.row: 1
                Layout.column: 1
                text: "7"
                onHandleClick: {
                    inputResult.text = HandelFun.handleNumber(inputResult.text, "7")
                    inputSequence.text = HandelFun.handleSequence(inputSequence.text, "7" );
                }
           }
           LightButton {
               id: key8
               Layout.columnSpan: 1
               Layout.rowSpan: 1
               Layout.row: 1
               Layout.column: 2
                text: "8"
                onHandleClick: {
                    inputResult.text = HandelFun.handleNumber(inputResult.text, "8")
                    inputSequence.text = HandelFun.handleSequence(inputSequence.text, "8" );
                }
           }
           LightButton {
               id: key9
               Layout.columnSpan: 1
               Layout.rowSpan: 1
               Layout.row: 1
               Layout.column: 3
               text: "9"
               onHandleClick: {
                   inputResult.text = HandelFun.handleNumber(inputResult.text, "9")
                   inputSequence.text = HandelFun.handleSequence(inputSequence.text, "9" );
               }
           }
           LightButton {
               id: key0
               Layout.columnSpan: 2
               Layout.rowSpan: 1
               Layout.row: 4
               Layout.column: 1
               text: "0"
               onHandleClick: {
                   inputResult.text = HandelFun.handleNumber(inputResult.text, "0")
                   inputSequence.text = HandelFun.handleSequence(inputSequence.text, "0" );
               }
           }
           LightButton {
               id: keydot
               Layout.columnSpan: 1
               Layout.rowSpan: 1
               Layout.row: 4
               Layout.column: 3
               text: "."
               onHandleClick: {
                   inputResult.text = HandelFun.handleNumber(inputResult.text, ".")
                   inputSequence.text = HandelFun.handleSequence(inputSequence.text, "." );
               }
           }
           DarkButton {
               id: keymult
               Layout.columnSpan: 1
               Layout.rowSpan: 1
               Layout.row: 1
               Layout.column: 4
               text: "x"
               onHandleClick: {
                   inputSequence.text = HandelFun.handleSequence(inputSequence.text, "x" );
               }
           }
           DarkButton {
               id: keyplus
               Layout.columnSpan: 1
               Layout.rowSpan: 1
               Layout.row: 2
               Layout.column: 4
               text: "+"
               onHandleClick: {
                   inputSequence.text = HandelFun.handleSequence(inputSequence.text, "+" );
                   inputResult.text = "0";
               }
           }
           DarkButton {
               id: keyreduce
               Layout.columnSpan: 1
               Layout.rowSpan: 1
               Layout.row: 3
               Layout.column: 4
               text: "-"
               onHandleClick: {
                   inputSequence.text = HandelFun.handleSequence(inputSequence.text, "-" );
                   inputResult.text = "0";
               }
           }
           DarkButton {
               id: keyanswer
               Layout.columnSpan: 1
               Layout.rowSpan: 1
               Layout.row: 4
               Layout.column: 4
               text: "="
               color: "#669999"
               hoverColor: "#88bbbb"

               onHandleClick: {
                   inputResult.text = HandelFun.handleAnswer(inputSequence.text);
                   inputSequence.text = inputResult.text;
//                   inputSequence.text = HandelFun.handleSequence(inputSequence.text, "=" );
               }
           }
       }

    TestBtn{
        x: 5
        y: 500
//        anchors.centerIn: parent
    }
    Item{
        Audio{
            id: playMusic
            source: "qrc:/image/door_chime0.mp3"
//            autoPlay: true
        }
    }
    Button{
        id: popbtn
        x: 70
        y: 500
        text: "popup"
        onClicked: {
            popbtn.showPopupCenter(display1)
            playMusic.play();
        }
        Component {
            id:     display1
            Rectangle {
                width:  lab1.width*1.5
                height: lab1.height*5
//                color:                  "#FF9D6F"
                color: "#ffffff"
                Label {
                    id:                 lab1
                    anchors.centerIn:   parent
                    font.bold:          true
                    font.pointSize:     14
//                    width: 300
                    Row{
                        spacing: 10
                        Button{
                            id: closebtn
                            text: "close"
                            onClicked: {
                                Qt.quit();
                            }
                        }
                        Button{
                            id: cancelbtn
                            text: "cancel"
                            onClicked: {
                                popupCenter.close()
                            }
                        }
                    }
                }
            }
        }
        function showPopupCenter(raiseItem) {
            popupCenter.raiseItem = raiseItem
            popupCenter.open()
        }
        Popup {
            id:             popupCenter
            modal:          true            //模态， 为 true后弹出窗口会叠加一个独特的背景调光效果
            focus:          true            //焦点,  当弹出窗口实际接收到焦点时，activeFocus将为真
            padding:        0
            closePolicy:    Popup.CloseOnEscape | Popup.CloseOnPressOutside
            property var    raiseItem:          null
            background: Rectangle {
                color:  "#ffffff"
            }
            Loader {
                id: loaderCenter
                onLoaded: {
                    popupCenter.x = (mainWindow.width * 0.5) - loaderCenter.width
                    popupCenter.y = (mainWindow.height - loaderCenter.height) * -0.7
                }
            }
            onOpened: {
                loaderCenter.sourceComponent = popupCenter.raiseItem
            }
            onClosed: {
                loaderCenter.sourceComponent = null
                popupCenter.raiseItem = null
            }
        }
    }
    MouseArea {
        focus: true
        Keys.enabled: true
        Keys.onDigit0Pressed: {
            key0.keyDown();
        }
        Keys.onDigit1Pressed: {
            key1.keyDown();
        }
        Keys.onDigit2Pressed: {
            key2.keyDown();
        }
        Keys.onDigit3Pressed: {
            key3.keyDown();
        }
        Keys.onDigit4Pressed: {
            key4.keyDown();
        }
        Keys.onDigit5Pressed: {
            key5.keyDown();
        }
        Keys.onDigit6Pressed: {
            key6.keyDown();
        }
        Keys.onDigit7Pressed: {
            key7.keyDown();
        }
        Keys.onDigit8Pressed: {
            key8.keyDown();
        }
        Keys.onDigit9Pressed: {
            key9.keyDown();
        }
        Keys.onPressed: {
            switch(event.key){
            case 16777219:
                keyback.keyDown();
                break;
            case 16777220:
                keyanswer.keyDown();
                break;
            case 16777221:
                keyanswer.keyDown();
                break;
            case 16777216:
                keyclearenter.keyDown();
                break;
            case 16777223:
                keyclear.keyDown();
                break;
            case 42:
                keymult.keyDown();
                break;
            case 43:
                keyplus.keyDown();
                break;
            case 45:
                keyreduce.keyDown();
                break;
            case 46:
                keydot.keyDown();
                break;
            case 47:
                keydiv.keyDown();
                break;
            default:
                console.log(event.key);
            }
        }
    }
}
