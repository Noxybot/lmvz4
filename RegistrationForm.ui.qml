import QtQuick 2.4
import QtQuick.Controls 2.3

Page {
    id: element1
    width: 300
    height: 700
    property alias reg: reg
    property alias vhod: vhod
    antialiasing: true

    Text {

        id: element
        x: 118
        y: 260
        width: 195
        height: 28
        color: "#0b28dc"
        text: qsTr("Like Bike")
        styleColor: "#83beda"
        style: Text.Outline
        font.bold: true
        anchors.horizontalCenterOffset: 1
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 27
    }

    Text {
        MouseArea {
            anchors.fill: parent
            id: vhod
            anchors.rightMargin: 0
            anchors.bottomMargin: -3
            anchors.leftMargin: 0
            anchors.topMargin: 3
        }
        id: element2
        x: 115
        y: 428
        width: 119
        height: 50
        color: "#0b28dc"
        text: qsTr("Войти")
        font.bold: true
        verticalAlignment: Text.AlignBottom
        ////renderType: Text.NativeRendering
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 20
    }

    Text {
        MouseArea {
            anchors.fill: parent
            id: reg
            anchors.rightMargin: 7
            anchors.bottomMargin: -3
            anchors.leftMargin: -7
            anchors.topMargin: 3
        }
        id: element3
        x: 119
        y: 489
        width: 125
        height: 48
        color: "#0b28dc"
        text: qsTr("Регистрация")
        font.bold: true
        lineHeight: 1
        verticalAlignment: Text.AlignBottom
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenterOffset: 3
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 20
    }

    Image {
        id: image
        x: 246
        y: 0
        width: 54
        height: 59
        fillMode: Image.PreserveAspectFit
        source: "ic_help_outline_black_48dp.png"
    }

    Image {
        id: image1
        x: 4
        y: 48
        width: 291
        height: 232
        fillMode: Image.PreserveAspectFit
        source: "bike.png"
    }
}
