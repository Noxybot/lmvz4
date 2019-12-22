import QtQuick 2.4
import QtQuick.Controls 2.1
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.3

Page {
    id: element1
    // width: 300
    //height: 700
    property alias columnLayout: columnLayout
    property alias mouseArea: mouseArea
    property alias username: username
    //property alias label: username
    //property alias back: back
    property alias image: image
    property alias person: person
    property alias roundButton: roundButton
    property alias roundButton1: roundButton1
    transformOrigin: Item.Center
    visible: true

    ColumnLayout {
        id: columnLayout
        anchors.fill: parent


        ToolBar {
            id: toolBar
            Layout.fillWidth: true
            Layout.preferredHeight: parent.height / 9.9
            RowLayout {
                Layout.fillWidth: true
                id: rowLayout3
                anchors.bottomMargin: 0
                anchors.fill: parent

                Item {
                    Layout.maximumHeight: parent.height
                    Layout.maximumWidth: parent.width / 4
                    Layout.preferredHeight: parent.height
                    Layout.preferredWidth: parent.width / 5

                Image {
                    anchors.fill: parent

                    id: image3
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.top: parent.top
                    anchors.topMargin: 0
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                    fillMode: Image.PreserveAspectFit

                    source: "ic_keyboard_backspace_black_48dp.png"

                    MouseArea {
                        id: mouseArea
                        anchors.rightMargin: 0
                        anchors.fill: parent
                    }
                }
                }
                Item {
                    Layout.alignment: Qt.AlignRight
                    Layout.maximumHeight: parent.height
                    Layout.maximumWidth: parent.width / 4
                    Layout.preferredHeight: parent.height
                    Layout.preferredWidth: parent.width / 5

                Image {
                   anchors.fill: parent
                    MouseArea {
                        id: person
                        anchors.fill: parent
                    }
                    id: image
                    Layout.alignment: Qt.AlignRight
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                    source: "person.png"
                }
                }
            }
        }
        Item {
            id: element111
            height: 200
        }

        RowLayout {
            id: rowLayout2
            Layout.preferredHeight: parent.height / 8
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: true

            Label {
                Layout.fillHeight: true
                id: element
                // Layout.preferredHeight: parent.height
                text: qsTr("Здравствуйте, ")
                font.pixelSize: 74
            }

            Label {
                Layout.fillHeight: true
                // Layout.preferredHeight: parent.height
                id: username
                text: qsTr("username")
                font.pixelSize: 74
            }
        }

        Item {
            id: element4
            height: 100
        }

        RowLayout {
            id: rowLayout
            Layout.fillHeight: true
            Layout.preferredHeight: parent.height / 9
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: true
            Item {
                Layout.maximumHeight: parent.height
                Layout.maximumWidth: parent.width / 4
                Layout.preferredHeight: parent.height
                Layout.preferredWidth: parent.width / 5

                Image {
                    anchors.fill: parent
                    id: image1
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    fillMode: Image.PreserveAspectFit
                    source: "time.png"
                }
            }
            RoundButton {
                Layout.maximumHeight: parent.height / 1.5
                Layout.fillHeight: true
                id: roundButton
                font.pixelSize: 64
                text: "Конец проката"

            }
        }

        RowLayout {

            id: rowLayout1
            Layout.fillHeight: true
            //width: 100
            //height: 100
            Layout.preferredHeight: parent.height / 9
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Item {
                Layout.maximumHeight: parent.height
                Layout.maximumWidth: parent.width / 4
                Layout.preferredHeight: parent.height
                Layout.preferredWidth: parent.width / 5
                Image {

                    anchors.fill: parent
                    id: image2

                    fillMode: Image.PreserveAspectFit
                    source: "search.png"
                }
            }

            RoundButton {
                Layout.maximumHeight: parent.height / 1.5
                Layout.fillHeight: true
                id: roundButton1
                text: " Искать прокат"
                font.pixelSize: 64
            }
        }
        Item {
            id: element5
            height: 50
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/































/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
