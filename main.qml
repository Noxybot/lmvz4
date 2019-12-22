import QtQuick 2.0
import QtQuick.Controls.Material 2.4
import QtQuick.Controls 2.4
ApplicationWindow {
  //  property alias login: logpage.cur_pass
    id: rootWindow
    visible: true
    width: 300
    height: 680
    title: qsTr("Login Demo")
//CabinetForm {}
  // LoginPasswordForm {}
    //Registration {}
    //RegistrationForm {}
    //Places_map {}
    StackView {
        anchors.fill: parent
           id: stack
          //initialItem: Qt.resolvedUrl("MapView.qml")
        initialItem: Qt.resolvedUrl("Login/LoginNewForm.qml")
       }
//
   // stack.push(CabinetForm);
}
