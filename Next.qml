import QtQuick 2.4
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.2
NextForm {
    anchors.fill: parent
    property bool opened: false
    mouseArea2.onClicked: { console.log("hello");  opened = !opened; if (opened) pop.open();
}

    Popup {
        y: parent.height / 2 + 70
        x: parent.width / 2 - 415
        background: Rectangle {anchors.fill: parent;color: "white"}
        Layout.alignment: Qt.AlignHCenter
        id:pop
        Label {font.pixelSize: 50;text: "Оплата осуществляется с помщью\nсохраненной карты в приложении\nили наличными на точке проката"}
    }
    //mouseArea2.onClicked: {console.log("hello");  opened = !opened; if (opened) pop.open();
//}
    mouseArea.onClicked: {stack.pop()
}
    gonext.onClicked: {stack.push ("Next2.qml")
    }
  //  mouseArea.onClicked: {stack.pop()
    //}
   // button.onClicked: { stack.push ("Next2.qml")
   // }
}
