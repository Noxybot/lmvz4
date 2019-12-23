import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

import "backend.js" as Backend

Page {
    id: loginPage

    signal registerClicked()

    background: Rectangle {
        color: backGroundColor
    }

    Popup {
        background: Rectangle {anchors.fill: parent;color: "white"}
        y: parent.height / 2 + 70
        id:pop
        Label {text: "Тариф часовой: 30 грн час\nШтраф 150 грн за каждый проср. час\nТариф дневной: 300 грн в день\nШтраф 3000 грн за каждый проср. день\nТариф месячный: 1000 грн за месяц\n Штраф 10000$ за каждый проср. месяц"}
    }
    header: RowLayout {
        height: parent.height / 9.9
        Item {
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            Layout.maximumHeight: parent.height
            Layout.maximumWidth: parent.width / 5
            Layout.preferredHeight: parent.height
            Layout.preferredWidth: parent.width / 5
        Image {
            anchors.fill: parent
            source: "../ic_help_outline_black_48dp.png"
            fillMode: Image.PreserveAspectFit
            MouseArea {
                 anchors.fill: parent
                 onClicked: pop.open()
            }

        }
        }
    }

    Rectangle {
        id: iconRect
        width: parent.width
        height: parent.height / 3
        color: backGroundColor

        Text {
            id: icontext
            text: qsTr("\uf169")
            anchors.centerIn: parent
            font.pointSize: 112
            font.family: "fontawesome"
            color: mainAppColor
        }
    }

    ColumnLayout {
        width: parent.width
        anchors.top: iconRect.bottom
        spacing: 15

        TextField {
            id: loginUsername
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
            id: loginPassword
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

        Item {
            height: 20
        }

        CButton{
            height: 50
            Layout.preferredWidth: loginPage.width - 20
            Layout.alignment: Qt.AlignHCenter
            name: "Войти"
            baseColor: mainAppColor
            borderColor: mainAppColor
            onClicked: {
                loginUser(loginUsername.text, loginPassword.text)
            }
        }

        CButton{
            height: 50
            Layout.preferredWidth: loginPage.width - 20
            Layout.alignment: Qt.AlignHCenter
            name: "Регистрация"
            baseColor: "transparent"
            borderColor: mainAppColor
            onClicked: stackView.push("qrc:/Login/RegisterScreen.qml", {"uname": "arun", "pword": "some"}) //registerClicked()
        }

        Text {
            id: name
            text: '<html><style type="text/css"></style><a href="http://google.com">Забыли пароль?</a></html>' //qsTr("Forgot password?")
            linkColor: mainTextCOlor
            Layout.alignment: Qt.AlignHCenter
            font.pointSize: 34
            color: mainTextCOlor
            Layout.margins: 10
            onLinkActivated: forgotPassword()
        }
    }
}
