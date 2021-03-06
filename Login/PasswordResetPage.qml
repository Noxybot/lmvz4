import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

Page {
    id: passswordPage

    background: Rectangle {
        color: backGroundColor
    }

    header: ToolBar {
        height: parent.height / 9.9
        RowLayout {
            anchors.fill: parent
            Text {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                id: resetText
                text: qsTr("Восстановление пароля")
                font.pointSize: 34
                anchors.top: parent.top
                anchors.topMargin: 30
                anchors.horizontalCenter: parent.horizontalCenter
                color: "white"
            }
           // Item { Layout.fillWidth: true }
        }
    }

    ColumnLayout {
        width: parent.width
        anchors.top: resetText.bottom
        anchors.topMargin: 30
        spacing: 20

        TextField {
            id: registeredUsername
            placeholderText: qsTr("  Имя пользователя")
            Layout.preferredWidth: parent.width - 20
            Layout.alignment: Qt.AlignHCenter
            color: mainTextCOlor
            font.pointSize: 34
            font.family: "fontawesome"
            leftPadding: 100
            background: Rectangle {
                implicitWidth: 200
                implicitHeight: 50
                radius: implicitHeight / 2
                color: "transparent"

                Text {
                    text: "\uf007"
                    font.pointSize: 34
                    font.family: "fontawesome"
                    color: mainAppColor
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    leftPadding: 10
                }

                Rectangle {
                    width: parent.width - 10
                    height: 1
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.bottom
                    color: mainAppColor
                }
            }
        }

        TextField {
            id: registeredHint
            placeholderText: qsTr("  Подсказка к паролю")
            Layout.preferredWidth: parent.width - 20
            Layout.alignment: Qt.AlignHCenter
            color: mainTextCOlor
            font.pointSize: 34
            font.family: "fontawesome"
            leftPadding: 100
            echoMode: TextField.PasswordEchoOnEdit
            background: Rectangle {
                implicitWidth: 200
                implicitHeight: 50
                radius: implicitHeight / 2
                color: "transparent"
                Text {
                    text: "\uf023"
                    font.pointSize: 34
                    font.family: "fontawesome"
                    color: mainAppColor
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    leftPadding: 10
                }

                Rectangle {
                    width: parent.width - 10
                    height: 1
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.bottom
                    color: mainAppColor
                }
            }
        }

        Item {
            height: 20
        }

        CButton{
            font.pointSize: 26
            height: 50
            Layout.preferredWidth: parent.width - 20
            Layout.alignment: Qt.AlignHCenter
            name: "Восстановить"
            baseColor: mainAppColor
            borderColor: mainAppColor
            onClicked: initiateRetrieval()
        }
        CButton{
            font.pointSize: 26
            height: 50
            Layout.preferredWidth: parent.width - 20
            Layout.alignment: Qt.AlignHCenter
            name: "Отмена"
            baseColor: "transparent"
            borderColor: mainAppColor
            onClicked: logoutSession()
        }

        Item {
            height: 40
        }

        Text {
            id: helpText
            text: qsTr("Ваш пароль: ")
            font.pointSize: 16
            Layout.preferredWidth: parent.width - 20
            Layout.alignment: Qt.AlignLeft
            leftPadding: 15
            color: mainTextCOlor
            visible: false
        }

        Text {
            id: password
            font.pointSize: 13
            Layout.preferredWidth: parent.width - 20
            Layout.alignment: Qt.AlignLeft
            leftPadding: 15
            color: mainTextCOlor
            visible: false
        }

        Item {
            height: 20
        }
    }

    function initiateRetrieval()
    {
        var ret = retrievePassword(registeredUsername.text, registeredHint.text)
        if(ret !== "")
        {
            helpText.visible = true
            password.visible = true
            password.text = ret
        }
    }
}
