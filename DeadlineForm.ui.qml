import QtQuick 2.4
import QtQuick.Controls 2.3

Page {
    width: 300
    height: 700
    property alias mouseArea: mouseArea
    id: page
    anchors.fill: parent
    header: ToolBar {
        height: 50

        Text {
            id: element4
            x: 61
            y: 15
            color: "#ffffff"
            text: qsTr("Конец текущих прокатов")
            font.bold: true
            font.pixelSize: 17
        }
        Image {
            id: image
            x: 0
            y: 1
            width: 58
            height: 49
            z: 40
            fillMode: Image.PreserveAspectFit
            source: "ic_keyboard_backspace_black_48dp.png"

            MouseArea {
                id: mouseArea
                x: 0
                y: 0
                width: 58
                height: 49
                 anchors.fill: parent
            }

        }
    }



    Label {
        id: label
        x: 18
        y: 51
        text: qsTr("ул. Сумская, 37")
    }

    Label {
        id: label1
        x: 18
        y: 84
        text: qsTr("До конца проката осталось: ")
    }

    Label {
        id: label2
        x: 18
        y: 123
        color: "#0b28dc"
        text: qsTr("3 часа 0 минут 0 секунд")
    }
}
