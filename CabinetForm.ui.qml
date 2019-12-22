import QtQuick 2.4
import QtQuick.Controls 2.3

Page {
    width: 350
    height: 600
    property alias street: street
    property alias password: password
    property alias login: login
    property alias arrow: arrow
    id: page
    header: ToolBar {
        height: 50

        Text {
            id: element6
            x: 102
            y: 15
            color: "#ffffff"
            text: qsTr("Личный кабинет")
            font.bold: true
            font.pixelSize: 17
        }
        Image {
            MouseArea {
                id: arrow
                anchors.rightMargin: 0
                anchors.bottomMargin: 3
                anchors.leftMargin: 0
                anchors.topMargin: 3
                anchors.fill: parent
            }
            id: image1
            x: 0
            y: -3
            width: 54
            height: 56
            z: 5
            fillMode: Image.PreserveAspectFit
            source: "ic_keyboard_backspace_black_48dp.png"
        }
    }

    Image {
        id: image
        x: 1
        y: 261
        width: 297
        height: 143
        fillMode: Image.PreserveAspectFit
        source: "28062017092831.9.jpg"
    }



    Label {
        id: label
        x: 34
        y: 40
        text: qsTr("Логин")
    }

    Label {
        id: label1
        x: 34
        y: 92
        text: qsTr("Пароль")
    }

    Label {
        id: login
        x: 107
        y: 40
        color: "#0b28dc"
        text: qsTr("username")
    }

    Label {
        id: password
        x: 107
        y: 92
        color: "#0b28dc"
        text: qsTr("password")
    }

    Label {
        id: label4
        x: 34
        y: 149
        text: qsTr("Сохраненная карта")
    }

    Label {
        id: label5
        x: 185
        y: 149
        color: "#0b28dc"
        text: qsTr("0000000000000000")
    }

    Label {
        id: label6
        x: 38
        y: 213
        text: qsTr("Текущий заказ")
    }

    Label {
        id: street
        x: 38
        y: 435
        text: qsTr("ул. Сумская, 37")
    }
}
