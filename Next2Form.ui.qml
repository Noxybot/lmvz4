import QtQuick 2.4
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtQuick 2.4
import QtQuick.Controls 2.3

Page {
    anchors.fill: parent
    property alias mouseArea: mouseArea
    property alias button: button

    header: ToolBar {
        id: toolBar
        Layout.topMargin: 0
        Layout.fillWidth: true
        height: parent.height / 9.9

        RowLayout {
            anchors.fill: parent

            Text {
                Layout.alignment: Qt.AlignHCenter
                id: element2
                color: "#ffffff"
                text: qsTr("Бронирование")
                font.bold: true
                font.pointSize: 34
            }
            Item {
                Layout.alignment: Qt.AlignRight
                Layout.maximumHeight: parent.height
                Layout.maximumWidth: parent.width / 5
                Layout.preferredHeight: parent.height
                Layout.preferredWidth: parent.width / 5

                Image {
                    id: image2
                    anchors.fill: parent
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                    source: "help.png"

                    MouseArea {
                        id: mouseArea
                        anchors.fill: parent
                    }
                }
            }
        }
    }

    ColumnLayout {
        id: columnLayout
        anchors.fill: parent


        Text {
            id: element3
            color: "#0b28dc"
            text: qsTr("Шаг 3/3")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            font.bold: true
            font.pointSize: 25
        }

        Label {
            font.pointSize: 25
            id: label
            text: qsTr("Заказ оформлен")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }

        Label {
            font.pointSize: 20
            id: label1
            text: qsTr("Код будет сохранен в личном кабинете")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
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

        Button {
            id: button
            font.pointSize: 34
            text: qsTr("ОК")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

