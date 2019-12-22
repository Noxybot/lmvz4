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
    header: ToolBar {
        id: toolBar
        Layout.preferredHeight: parent.height

        RowLayout {
            Layout.fillWidth: true
            id: rowLayout3
            anchors.bottomMargin: 0
            anchors.fill: parent
            Image {

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

    ColumnLayout {
        id: columnLayout
        anchors.fill: parent

        RowLayout {
            id: rowLayout2
            width: 100
            height: 100
            Layout.fillHeight: false
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: true

            Label {
                id: element
                width: 186
                height: 31
                text: qsTr("Здравствуйте, ")
                font.pixelSize: 24
            }

            Label {
                id: username
                text: qsTr("username")
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
            width: 100
            height: 100
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: true

            Image {
                id: image1
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                fillMode: Image.PreserveAspectFit
                source: "time.png"
            }

            RoundButton {
                id: roundButton

                width: 245
                height: 52
                text: "Конец проката"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                font.pointSize: 11
            }
        }

        RowLayout {
            id: rowLayout1
            width: 100
            height: 100
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Image {

                id: image2
                Layout.maximumHeight: 48
                Layout.maximumWidth: 48
                Layout.alignment: Qt.AlignRight
                // fillMode: Image.PreserveAspectFit
                source: "search.png"
            }

            RoundButton {
                id: roundButton1
                width: 245
                height: 49
                text: " Искать прокат"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                font.pointSize: 11
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
    D{i:0;autoSize:true;height:480;width:640}D{i:1;anchors_height:50}
}
##^##*/

