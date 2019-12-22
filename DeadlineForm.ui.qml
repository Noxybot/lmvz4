import QtQuick 2.4
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.2

Page {
    anchors.fill: parent
    property alias mouseArea: mouseArea
    id: page
    header: ToolBar {
        Layout.topMargin: 0
        Layout.fillWidth: true
        Layout.maximumHeight: parent.height / 9.9
        Layout.preferredHeight: parent.height / 9.9

        RowLayout {
            anchors.fill: parent
            Item {
                Layout.maximumHeight: parent.height
                Layout.maximumWidth: parent.width / 5
                Layout.preferredHeight: parent.height
                Layout.preferredWidth: parent.width / 5

                Image {
                    id: image
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                    source: "ic_keyboard_backspace_black_48dp.png"

                    MouseArea {
                        id: mouseArea
                        anchors.fill: parent
                    }

                }
            }
            Text {
                id: element4

                color: "#ffffff"
                text: qsTr("Конец текущих прокатов")
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                font.bold: true
                font.pixelSize: 27
            }


        }


    }



    ColumnLayout {
        id: columnLayout
        anchors.fill: parent

        Item {
            id: element
            Layout.fillHeight: true
        }
        Label {
            id: label
            text: qsTr("ул. Сумская, 37")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }

        RowLayout {
            id: rowLayout
            width: 100
            height: 100
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Label {
                id: label1
                text: qsTr("До конца проката осталось: ")
            }

            Label {
                id: label2
                color: "#0b28dc"
                text: qsTr("3 часа 0 минут 0 секунд")
            }




        }

        Item {
            Layout.fillHeight: true
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:7;anchors_height:100;anchors_width:100}
}
##^##*/
