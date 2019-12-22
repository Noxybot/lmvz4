import QtQuick 2.4
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Page {
    property alias street: street
    property alias password: password
    property alias login: login
    property alias arrow: arrow
    id: page
    header: ToolBar {
        Layout.fillWidth: true
        height: parent.height / 9.9

        RowLayout {
            Layout.topMargin: 0

            anchors.fill: parent
            id: row4
            Item {
                Layout.maximumHeight: parent.height
                Layout.maximumWidth: parent.width / 5
                Layout.preferredHeight: parent.height
                Layout.preferredWidth: parent.width / 5
                Image {
                    anchors.fill: parent
                    MouseArea {
                        id: arrow
                        anchors.fill: parent
                    }
                    id: image1
                    fillMode: Image.PreserveAspectFit
                    source: "ic_keyboard_backspace_black_48dp.png"
                }
            }

            Label {
                Layout.alignment: Qt.AlignVCenter
                id: element6
                color: "#ffffff"
                text: qsTr("Личный кабинет")
                font.bold: true
                font.pixelSize: 30
            }
        }
    }
    ColumnLayout {
        id: columnLayout
        anchors.fill: parent

        RowLayout {
            id: row3
            width: 200
            height: 400
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Label {
                id: label1
                text: qsTr("Пароль: ")
            }

            Label {
                id: password
                color: "#0b28dc"
                text: qsTr("password")
            }
        }

        RowLayout {
            id: row2
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Label {
                // font.pixelSize: 74
                id: label
                text: qsTr("Логин: ")
            }

            Label {
                //  font.pixelSize: 74
                id: login
                color: "#0b28dc"
                text: qsTr("username")
            }
        }

        RowLayout {
            id: row1
            width: 200
            height: 400
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Label {
                // font.pixelSize: 74
                id: label4
                text: qsTr("Сохраненная карта: ")
            }

            Label {
                // font.pixelSize:
                id: label5
                color: "#0b28dc"
                text: qsTr("0000000000000000")
            }
        }

        RowLayout {
            id: row
            width: 200
            height: 400
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Label {
                id: label6
                text: qsTr("Текущий заказ: ")
            }

            Label {
                id: street
                text: qsTr("ул. Сумская, 37")
            }
        }
        Item {
            Layout.maximumHeight: parent.height / 3
            Layout.maximumWidth: parent.width - 20
            Layout.preferredHeight: parent.height
            Layout.preferredWidth: parent.width
            Image {
                id: image
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
                source: "28062017092831.9.jpg"
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

