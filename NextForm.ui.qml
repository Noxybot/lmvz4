import QtQuick 2.4
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.2

Page {
    anchors.fill: parent
    property alias mouseArea2: mouseArea2
    property alias mouseArea: mouseArea
    property alias amount: amount
    property alias totalsum: totalsum
    property alias time: time
    property alias tarif: tarif
    property alias street: street
    property alias gonext: gonext
    property alias days_month: days_month

    header: ToolBar {
        Layout.topMargin: 0
        Layout.fillWidth: true
        height: parent.height / 9.9

        RowLayout {
            anchors.fill: parent

            Item {
                Layout.maximumHeight: parent.height
                Layout.maximumWidth: parent.width / 5
                Layout.preferredHeight: parent.height
                Layout.preferredWidth: parent.width / 5
                Image {
                    anchors.fill: parent

                    id: image1
                    source: "ic_keyboard_backspace_black_48dp.png"
                    fillMode: Image.PreserveAspectFit

                    MouseArea {
                        id: mouseArea
                        anchors.fill: parent
                    }
                }
            }
            Text {
                id: element7
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
                        id: mouseArea2
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
            id: element
            color: "#0b28dc"
            text: qsTr("Шаг 2/3")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            font.bold: true
            font.pointSize: 25
        }

        RowLayout {
            id: rowLayout
            width: 100
            height: 100
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Label {
                font.pointSize: 25
                id: label8
                text: qsTr("Адрес: ")
            }

            Label {
                font.pointSize: 25
                id: street
                text: qsTr("ул. Сумская, 37")
            }
        }

        RowLayout {
            id: rowLayout1
            width: 100
            height: 100
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Label {
                font.pointSize: 25
                id: label2
                text: qsTr("Тариф: ")
            }

            Label {
                font.pointSize: 25
                id: tarif
                text: qsTr("Часовой 30грн./час")
            }
        }

        RowLayout {
            id: rowLayout2
            width: 100
            height: 100
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Label {
                font.pointSize: 25
                id: label4
                text: qsTr("На: ")
            }

            Label {
                font.pointSize: 25
                id: time
                text: qsTr("3 часа")
            }

            Label {
                font.pointSize: 25
                id: days_month
                text: qsTr(" часа")
            }
        }

        RowLayout {
            id: rowLayout3
            width: 100
            height: 100
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Label {
                font.pointSize: 25
                id: label9
                text: qsTr("Количество: ")
            }

            Label {
                font.pointSize: 25
                id: amount
                width: 11
                height: 17
                text: qsTr("1")
            }

            Label {
                font.pointSize: 25
                id: label7
                text: qsTr("шт.")
            }

            Label {
                font.pointSize: 25
                id: type
                text: qsTr("Городской")
            }
        }

        RowLayout {
            id: rowLayout4
            width: 100
            height: 100
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Label {
                font.pointSize: 25
                id: label11
                color: "#0b28dc"
                text: qsTr("Сумма")
            }

            Label {
                font.pointSize: 25
                id: totalsum
                color: "#0b28dc"
                text: qsTr("90 грн.")
                font.bold: true
            }
        }

        RowLayout {
            id: rowLayout5
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Label {
                font.pointSize: 23
                id: label10
                text: qsTr("Выберите способ оплаты")
            }
        }

        RowLayout {
            id: row
            width: 200
            height: 400
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Item {
                width: 100
            }
            ComboBox {
                delegate: ItemDelegate {
                    //width: control.width
                    text: modelData
                    font.pointSize: 25
                }
                font.pointSize: 25
                width: 200
                //  Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredHeight: 80
                height: 80
                id: comboBox
                currentIndex: 0
                model: ListModel {
                    id: cbItems
                    ListElement {
                        text: "Сохраненная карта"
                    }
                    ListElement {
                        text: "Наличными"
                    }
                }
            }
            Item {
                width: 100
            }
        }

        Button {
            id: gonext
            font.pointSize: 34
            text: qsTr("Далее")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

