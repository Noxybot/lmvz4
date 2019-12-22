import QtQuick 2.4

RegistrationForm {
    id: regform
    reg.onClicked: {stack.push(Qt.resolvedUrl("LoginPassword.qml"))}
    vhod.onClicked: {stack.push(Qt.resolvedUrl("Vhod.qml"))}


}
