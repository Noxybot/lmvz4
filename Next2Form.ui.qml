import QtQuick 2.4
import QtQuick.Controls 2.3

Page {
    width: 300
    height: 700
    property alias mouseArea: mouseArea
    property alias button: button
    property alias back: back
    property alias image1: image1

    ToolBar {
        id: toolBar
        x: 0
        y: 0
        width: 300
        height: 50

        Text {
            id: element2
            x: 85
            y: 15
            color: "#ffffff"
            text: qsTr("Бронирование")
            font.bold: true
            font.pixelSize: 17
        }

        Image {
            id: image2
            x: 250
            y: 0
            width: 50
            height: 50
            antialiasing: true
            fillMode: Image.PreserveAspectFit
            source: "help.png"

            MouseArea {
                id: mouseArea
                x: 0
                y: 4
                width: 50
                height: 42
            }
        }
    }

    Image {
        id: image
        x: 23
        y: 172
        width: 255
        height: 136
        source: "28062017092831.9.jpg"
        fillMode: Image.PreserveAspectFit
    }

    Button {
        id: button
        x: 170
        y: 639
        width: 122
        height: 48
        text: qsTr("ОК")
    }

    Image {
        MouseArea {
            id: back
            anchors.rightMargin: 37
            anchors.bottomMargin: 26
            anchors.fill: parent
        }
        id: image1
        x: 0
        y: 0
        width: 57
        height: 49
        source: "ic_keyboard_backspace_black_48dp.png"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: element3
        x: 113
        y: 63
        color: "#0b28dc"
        text: qsTr("Шаг 3/3")
        font.bold: true
        font.pixelSize: 17
    }

    Label {
        id: label
        x: 98
        y: 109
        text: qsTr("Заказ оформлен")
    }

    Label {
        id: label1
        x: 23
        y: 132
        text: qsTr("Код будет сохранен в личном кабинете")
    }
}
