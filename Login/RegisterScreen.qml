import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

Page {
    id: registerPage

    property string uname: ""
    property string pword: ""

    background: Rectangle {
        color: backGroundColor
    }
    header: ToolBar {
        height: parent.height / 9.9
        RowLayout {
            anchors.fill: parent
            Text {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                id: signupText
                text: qsTr("Регистрация")
                font.pointSize: 34
                anchors.top: parent.top
                anchors.topMargin: 30
                anchors.horizontalCenter: parent.horizontalCenter
                color: "White"
            }
        }
    }



    ColumnLayout {
        width: parent.width
        anchors.top: signupText.bottom
        anchors.topMargin: 30
        spacing: 25

        TextField {
            id: registerUsername
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
            id: registerPassword
            placeholderText: qsTr("  Пароль")
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

        TextField {
            id: registerPassword2
            placeholderText: qsTr("  Подвердите пароль")
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

        TextField {
            id: passwordHint
            placeholderText: qsTr("  Подсказка к паролю")
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
                    text: "\uf05a"
                    font.pointSize: 34
                    font.bold: true
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
            //id: passwordHint
            placeholderText: qsTr("  Номер кредитной карточки")
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
                    text: "\uf09f92b3"
                    font.pointSize: 34
                    font.bold: true
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
            name: "Зарегистрироваться"
            baseColor: mainAppColor
            borderColor: mainAppColor
            onClicked: registerNewUser(registerUsername.text, registerPassword.text, registerPassword2.text, passwordHint.text)
        }

        CButton{
            font.pointSize: 26
            height: 50
            Layout.preferredWidth: parent.width - 20
            Layout.alignment: Qt.AlignHCenter
            name: "Отмена"
            baseColor: "transparent"
            borderColor: mainAppColor
            onClicked: stackView.pop()
        }
    }
}
