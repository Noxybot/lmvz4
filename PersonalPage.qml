import QtQuick 2.4

PersonalPageForm {
    property string pass;
    mouseArea.onClicked: {stack.pop()
}
   // property alias usrname: username
    // username.onDestroyed: {
//}
  //  property alias usrname: username.text
//    back.onClicked: {
//        stack.pop()
//}
    roundButton.onClicked: {stack.push (Qt.resolvedUrl("Deadline.qml"))
    }
    roundButton1.onClicked: {
        stack.push (Qt.resolvedUrl("Map.qml"))
}

    person.onClicked: {stack.push ("Cabinet.qml", {"login.text": username.text, "password.text": pass})}

}
