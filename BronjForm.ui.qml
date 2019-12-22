import QtQuick 2.4
import QtQuick.Controls 2.3

Page {
    width: 300
    height: 700
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
            y: -5
            width: 58
            height: 60
            z: 3.804
            source: "ic_keyboard_backspace_black_48dp.png"
            fillMode: Image.PreserveAspectFit

            MouseArea {
                id: mouseArea1
                x: 0
                y: 8
                width: 50
                height: 44
            }
        }
        Image {
            id: image2
            x: 247
            y: -20
            width: 53
            height: 87
            antialiasing: true
            z: 51.63
            fillMode: Image.PreserveAspectFit
            source: "help.png"
        }

        MouseArea {
            id: mouseArea
            x: 252
            y: 0
            width: 53
            height: 50
        }
    }

    ComboBox {
        id: tarif
        x: 84
        y: 175
        width: 200
        height: 48
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

    SpinBox {
        id: hours
        x: 122
        y: 261
        width: 120
        height: 33
    }

    SpinBox {
        id: amount
        x: 122
        y: 339
        width: 120
        height: 35
    }

    ComboBox {
        id: type
        x: 109
        y: 407
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

    Button {
        id: button
        x: 174
        y: 590
        width: 110
        height: 49
        text: qsTr("Далее")
    }





    Label {
        id: label
        x: 27
        y: 114
        text: qsTr("Забронировать на:")
    }

    Label {
        id: street
        x: 186
        y: 114
        text: qsTr("ул. Сумская, 37")
    }

    Label {
        id: label2
        x: 27
        y: 190
        text: qsTr("Тариф")
    }

    Label {
        id: label3
        x: 27
        y: 269
        text: qsTr("На")
    }

    Label {
        id: label4
        x: 256
        y: 269
        text: qsTr("часа")
    }

    Label {
        id: label5
        x: 27
        y: 348
        text: qsTr("Количество")
    }

    Text {
        id: element
        x: 109
        y: 30
        color: "#0b28dc"
        text: qsTr("Шаг 1/3")
        font.bold: true
        font.pixelSize: 19
    }

    Label {
        id: label6
        x: 27
        y: 422
        text: qsTr("Категория")
    }

    Label {
        id: label7
        x: 256
        y: 348
        text: qsTr("штук")
    }


}
