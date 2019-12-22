import QtQuick 2.4
import QtQuick.Controls 2.3

Page {
    width: 300
    height: 700
    property alias mouseArea2: mouseArea2
    property alias mouseArea1: mouseArea1
    property alias mouseArea: mouseArea
    property alias amount: amount
    property alias totalsum: totalsum
    property alias time: time
    property alias tarif: tarif
    property alias street: street
    property alias gonext: gonext

    header: ToolBar {
        height: 50

        Text {
            id: element7
            x: 85
            y: 15
            color: "#ffffff"
            text: qsTr("Бронирование")
            font.bold: true
            font.pixelSize: 17
        }
        Image {

            id: image1
            x: 0
            y: -11
            width: 58
            height: 72
            z: 3.804
            source: "ic_keyboard_backspace_black_48dp.png"
            fillMode: Image.PreserveAspectFit

            MouseArea {
                id: mouseArea
                x: 0
                y: 13
                width: 58
                height: 46
            }
        }
        Image {
            id: image2
            x: 247
            y: -22
            width: 53
            height: 90
            antialiasing: true
            z: 51.63
            fillMode: Image.PreserveAspectFit
            source: "help.png"

            MouseArea {
                id: mouseArea2
                x: 0
                y: 23
                width: 53
                height: 47
            }
        }
    }

    Button {
        id: gonext
        x: 174
        y: 590
        width: 110
        height: 49
        text: qsTr("Далее")
    }





    Label {
        id: street
        x: 116
        y: 105
        text: qsTr("ул. Сумская, 37")
    }

    Label {
        id: label2
        x: 27
        y: 162
        text: qsTr("Тариф")
    }

    Label {
        id: label4
        x: 27
        y: 212
        text: qsTr("На ")
    }

    Label {
        id: type
        x: 116
        y: 268
        text: qsTr("Городской")
    }

    Text {
        id: element
        x: 109
        y: 30
        color: "#0b28dc"
        text: qsTr("Шаг 2/3")
        font.bold: true
        font.pixelSize: 19
    }

    Label {
        id: label7
        x: 206
        y: 268
        text: qsTr("шт.")
    }

    Label {
        id: tarif
        x: 116
        y: 162
        text: qsTr("Часовой 30грн./час")
    }

    Label {
        id: time
        x: 116
        y: 212
        text: qsTr("3 часа")
    }

    Label {
        id: label8
        x: 27
        y: 105
        text: qsTr("Адрес")
    }

    Label {
        id: amount
        x: 194
        y: 268
        width: 11
        height: 17
        text: qsTr("1")
    }

    Label {
        id: label9
        x: 26
        y: 268
        text: qsTr("Количество")
    }

    Label {
        id: label10
        x: 28
        y: 408
        text: qsTr("Выберите способ оплаты")
    }

    ComboBox {
        id: comboBox
        x: 28
        y: 431
        width: 244
        height: 48
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

    Label {
        id: label11
        x: 26
        y: 326
        color: "#0b28dc"
        text: qsTr("Сумма")
    }

    Label {
        id: totalsum
        x: 116
        y: 326
        color: "#0b28dc"
        text: qsTr("90 грн.")
        font.bold: true
    }

    MouseArea {
        id: mouseArea1
        x: 223
        y: 17
        width: 61
        height: 50
    }
}
