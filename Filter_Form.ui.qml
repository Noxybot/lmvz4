import QtQuick 2.4
import QtQuick.Controls 2.3

Page {
    width: 300
    height: 700
    property alias mouseArea: mouseArea

    ComboBox {
        id: comboBox
        x: 117
        y: 93
        width: 162
        height: 48
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

    ComboBox {
        id: comboBox1
        x: 111
        y: 195
        width: 168
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

    Button {
        id: button
        x: 148
        y: 645
        width: 140
        height: 45
        text: qsTr("Применить")
    }

    ToolBar {
        id: toolBar
        x: 0
        y: 0
        width: 300
        height: 50

        Image {
            id: image
            x: -5
            y: 0
            width: 65
            height: 50
            fillMode: Image.PreserveAspectFit
            source: "ic_keyboard_backspace_black_48dp.png"

            MouseArea {
                id: mouseArea
                x: 8
                y: 0
                width: 49
                height: 50
            }
        }

        Text {
            id: element
            x: 63
            y: 15
            color: "#ffffff"
            text: qsTr("Выберите фильтры")
            font.bold: true
            font.pixelSize: 17
        }
    }

    Label {
        id: label
        x: 19
        y: 108
        text: qsTr("Район")
    }

    Label {
        id: label1
        x: 19
        y: 202
        text: qsTr("Категория\nвелосипеда ")
    }
}
