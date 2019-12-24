import QtQuick 2.4
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Page {
    anchors.fill: parent
    property alias mouseArea: mouseArea
    header: ToolBar {
        Layout.topMargin: 0
        id: toolBar
        Layout.fillWidth: true
        height: parent.height / 9.9
        RowLayout {
            Layout.topMargin: 0
            anchors.fill: parent
            Item {
                Layout.maximumHeight: parent.height
                Layout.maximumWidth: parent.width / 5
                Layout.preferredHeight: parent.height
                Layout.preferredWidth: parent.width / 5
                Image {
                    anchors.fill: parent
                    id: image
                    fillMode: Image.PreserveAspectFit
                    source: "ic_keyboard_backspace_black_48dp.png"

                    MouseArea {
                        id: mouseArea
                        anchors.fill: parent
                    }
                }
            }

            Text {

                id: element
                color: "#ffffff"
                text: qsTr("Выберите фильтры")
                font.bold: true
                font.pointSize: 34
            }
        }
    }

    ColumnLayout {
        id: columnLayout
        anchors.fill: parent
        Layout.topMargin: 0

        RowLayout {
            Layout.fillWidth: true
            id: rowLayout
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Label {
                font.pointSize: 25
                id: label
                text: qsTr("Район")
            }

            ComboBox {
                Layout.preferredHeight: 80
                height: 80
                Layout.fillWidth: true
                font.pointSize: 25
                delegate: ItemDelegate {
                    //width: control.width
                    text: modelData
                    font.pointSize: 25
                }
                id: comboBox
                currentIndex: 0
                model: ListModel {
                    id: cbItems
                    ListElement {
                        text: "Киевский"
                    }
                    ListElement {
                        text: "Московский"
                    }
                    ListElement {
                        text: "Индустриальный"
                    }
                }
            }
            Item {
                width: 20
            }
        }

        RowLayout {
            id: rowLayout1
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Label {
                font.pointSize: 25
                id: label1
                text: qsTr("Категория\nвелосипеда ")
            }

            ComboBox {
                Layout.preferredHeight: 80
                height: 80
                Layout.fillWidth: true
                font.pointSize: 25
                delegate: ItemDelegate {
                    //width: control.width
                    text: modelData
                    font.pointSize: 25
                }
                id: comboBox1
                currentIndex: 0
                model: ListModel {
                    id: cbItems2
                    ListElement {
                        text: "Городской"
                    }
                    ListElement {
                        text: "Горный"
                    }
                    ListElement {
                        text: "Детский"
                    }
                }
            }
            Item {
                width: 20
            }
        }

        Button {
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: parent.width - 100
            id: button
            //Layout.f
            text: qsTr("Применить")
            font.pixelSize: 64
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

