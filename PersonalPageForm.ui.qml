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
            Layout.preferredHeight: parent.height / 5

            RowLayout {
                Layout.fillWidth: true
                id: rowLayout3
                anchors.bottomMargin: 0
                anchors.fill: parent
                Image {
                    Layout.maximumHeight: parent.height
                    Layout.maximumWidth: parent.width / 4

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
                Image {
                    Layout.maximumHeight: parent.height
                    Layout.maximumWidth: parent.width / 4
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

        RowLayout {
            id: rowLayout2
            width: 100
            height: 100
            Layout.fillHeight: false
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: true

            Label {
                id: element
                Layout.preferredHeight: parent.height
                text: qsTr("Здравствуйте, ")
             //   font.pointSize: 34
            }

            Label {
                Layout.preferredHeight: parent.height
                id: username
                text: qsTr("username")
               // font.pointSize: 64
            }
        }

        Item {
            id: element4
            width: 200
            height: 100
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        RowLayout {
            id: rowLayout
            //            width: 100
            //            height: 100
            Layout.preferredHeight: parent.height / 9
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: true

            Image {
                id: image1
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                fillMode: Image.PreserveAspectFit
                Layout.maximumHeight: parent.height
                Layout.maximumWidth: parent.width / 4
                source: "time.png"
            }

            RoundButton {
                id: roundButton

                Layout.preferredHeight: parent.height - 5
                text: "Конец проката"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                //font.pointSize: 11
                //font.pointSize: 34
            }
        }

        RowLayout {
            id: rowLayout1
            //width: 100
            //height: 100
            Layout.preferredHeight: parent.height / 9
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Image {

                id: image2
                Layout.maximumHeight: parent.height
                Layout.maximumWidth: parent.width / 4
                Layout.alignment: Qt.AlignRight
                fillMode: Image.PreserveAspectFit
                source: "search.png"
            }

            RoundButton {
                id: roundButton1
                Layout.preferredHeight: parent.height - 5

                //  Layout.minimumHeight: parent.height / 20
                // width: 245
                // height: 49
                text: " Искать прокат"
               // font.pointSize: 34
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
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

