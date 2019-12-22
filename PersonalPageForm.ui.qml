import QtQuick 2.4
import QtQuick.Controls 2.1
import QtQuick.Controls.Material 2.0

Page {
    id: element1
    width: 300
    height: 700
    property alias mouseArea: mouseArea
    property alias username: username
    //property alias label: username
    //property alias back: back
    property alias image: image
    property alias person: person
    property alias roundButton: roundButton
    property alias roundButton1: roundButton1
    transformOrigin: Item.Center
    visible: true
    header: ToolBar {
        height: 50

        Image {

            id: image3
            x: 0
            y: 0
            width: 54
            height: 50
            fillMode: Image.PreserveAspectFit
            source: "ic_keyboard_backspace_black_48dp.png"

            MouseArea {
                id: mouseArea
                x: 8
                y: 8
                width: 46
                height: 34
            }
        }
        Image {
            MouseArea {
                anchors.fill: parent
                id: person
                anchors.rightMargin: 0
                anchors.bottomMargin: 1
                anchors.leftMargin: 0
                anchors.topMargin: -1
            }
            id: image
            x: 249
            y: 0
            width: 51
            height: 50
            antialiasing: true
            z: 3
            fillMode: Image.PreserveAspectFit
            source: "person.png"
        }
    }



    Label {
        id: element
        x: 15
        y: 141
        width: 186
        height: 31
        text: qsTr("Здравствуйте, ")
        font.pixelSize: 24

        Label {
            id: username
            x: 189
            y: 0
            text: qsTr("username")
        }
    }

    Image {
        id: image2
        x: 8
        y: 438
        width: 62
        height: 58
        fillMode: Image.PreserveAspectFit
        source: "search.png"
    }

    RoundButton {
        id: roundButton
        x: 76
        y: 376
        width: 215
        height: 52
        text: "Конец проката"
        font.pointSize: 11
    }

    RoundButton {
        id: roundButton1
        x: 76
        y: 447
        width: 215
        height: 49
        text: " Искать прокат"
        font.pointSize: 11
    }

    Image {
        id: image1
        x: 8
        y: 376
        fillMode: Image.PreserveAspectFit
        source: "time.png"
    }
}
