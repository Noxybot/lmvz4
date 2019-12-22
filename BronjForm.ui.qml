import QtQuick 2.4
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.2

Page {
    id: page
    anchors.fill: parent
    property alias mouseArea: mouseArea
    property alias type: type
    property alias amount: amount
    property alias hours: hours
    property alias tarif: tarif
    property alias button: button
    property alias mouseArea1: mouseArea1
    property alias image1: image1
    property alias street: street

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
                            id: mouseArea1
                            anchors.fill: parent
                        }
                    }
                }
                Text {
                    id: element7
                    color: "#ffffff"
                    text: qsTr("Бронирование")
                    font.bold: true
                    font.pixelSize: 27
                }
                Item {
                    Layout.maximumHeight: parent.height
                    Layout.maximumWidth: parent.width / 5
                    Layout.preferredHeight: parent.height
                    Layout.preferredWidth: parent.width / 5

                    Image {
                        anchors.fill: parent
                        id: image2
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
            id: element
            color: "#0b28dc"
            text: qsTr("Шаг 1/3")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            font.pixelSize: 19
        }

        RowLayout {
            id: rowLayout
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Label {
                id: label
                text: qsTr("Забронировать на:")
            }

            Label {
                id: street
                text: qsTr("ул. Сумская, 37")
            }
        }

        RowLayout {
            id: rowLayout1
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            ComboBox {
                id: tarif

                currentIndex: 0
                model: ListModel {
                    id: cbItems
                    ListElement {
                        text: "Часовой 30грн./час"
                    }
                    ListElement {
                        text: "Дневной 300грн./день"
                    }
                    ListElement {
                        text: "На месяц 1000грн/месяц"
                    }
                }
            }

            Label {
                id: label2
                width: 277
                height: 17
                text: qsTr("Тариф")
            }

        }

        RowLayout {
            id: rowLayout2
            width: 100
            height: 100
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Label {
                id: label3
                text: qsTr("На")
            }

            SpinBox {
                id: hours
                width: 120
                height: 33
            }

            Label {
                id: label4
                text: qsTr("часа")
            }



        }

        RowLayout {
            id: rowLayout3
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter


            Label {
                id: label5
                text: qsTr("Количество")
            }

            SpinBox {
                id: amount
            }


            Label {
                id: label7
                text: qsTr("штук")
            }
        }

        RowLayout {
            id: rowLayout4
            width: 100
            height: 100
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            ComboBox {
                id: type
                width: 175
                height: 48
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

            Label {
                id: label6
                text: qsTr("Категория")
            }

        }

        Button {
            id: button
            text: qsTr("Далее")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            font.pixelSize: 64

        }


    }



}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

