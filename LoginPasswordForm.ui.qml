import QtQuick 2.4
import QtQuick.Controls 2.3
import QtQuick.Controls.Material 2.0
import QtQuick.Controls.Imagine 2.3

Page {
    width: 300
    height: 700
    visible: true
    header: ToolBar {
        height: 50

        Image {
            id: image1
            x: 0
            y: 0
            width: 62
            height: 50
            fillMode: Image.PreserveAspectFit
            source: "ic_keyboard_backspace_black_48dp.png"
        }

        Image {
            id: image
            x: 253
            y: 0
            width: 47
            height: 50
            antialiasing: true
            fillMode: Image.PreserveAspectFit
            source: "help.png"
        }
    }

    TextField {
        id: textField
        x: 25
        y: 80
        width: 250
        height: 20
        readOnly: false
        placeholderText: qsTr("")
    }

    TextField {
        id: textField1
        x: 25
        y: 174
        width: 250
        height: 20
        // echoMode: 2
        placeholderText: qsTr("")
    }

    Text {
        id: element3
        x: 94
        y: -36
        width: 113
        height: 23
        color: "#ffffff"
        text: qsTr("Регистрация")
        font.bold: true
        z: 4
        font.pixelSize: 17
    }

    Text {
        id: element6
        x: 65
        y: 270
        color: "#0b28dc"
        text: qsTr("Ваши данные в безопасности")
        font.pixelSize: 12
    }

    Button {
        id: button
        x: 54
        y: 595
        width: 187
        height: 47
        text: qsTr("Зарегистрироваться")
    }

    Label {
        id: label
        x: 25
        y: 39
        text: qsTr("Логин *")
    }

    Label {
        id: label1
        x: 25
        y: 128
        text: qsTr("Пароль *")
    }

    Label {
        id: label2
        x: 25
        y: 217
        text: qsTr("Номер карты")
    }

    TextField {
        id: textField2
        x: 20
        y: 233
        width: 255
        height: 43
    }

    Label {
        id: label3
        x: 14
        y: 317
        text: qsTr("Обязательные поля помечены звездочкой (*)")
        font.pointSize: 10
    }
}
