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


    header: RowLayout {
        height: parent.height / 9.9
        Item {
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            Layout.maximumHeight: parent.height
            Layout.maximumWidth: parent.width / 5
            Layout.preferredHeight: parent.height
            Layout.preferredWidth: parent.width / 5
        Image {
            opacity: 0.7
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
        Popup {
            background: Rectangle {anchors.fill: parent;color: "white"}
           // y: parent.height / 2
            id:pop
            Layout.fillWidth: true
            Label {font.pointSize: 11; text: "   Как пользоваться приложением?\n   Для начала следует зарегистрироваться.\n   Если вы желаете совершать оплату в приложении,\nукажите номер карты при регистрации,\nэто избавит вас от необходимости оставлять залог в пункте проката\n   После входа или регистрации вы попадете на главную страницу\n   Вы можете открыть личный кабинет по нажатию на иконку человека\n   В личном кабинете содержится информация,\nвведенная Вами при регистрации\n   Также можно посмотреть код, для брони велосипеда по открытому заказу\nПо нажатию на  \"Конец прокат\"вы сможете посмотреть,\nкогда вам нужно вернуть велосипед, и по какому адресу находится прокат\n   Для начала бронирования следует нажать \"Искать прокат\"\n   На карте выберите удобный по расположению прокат,\nможно воспользоваться фильтром\n   После нажатия на прокат и  кнопку \"Забронировать\"\nвы сможете указать нужные параметры брони и оформить заказ"}
        }
    }
}
