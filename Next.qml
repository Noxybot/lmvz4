import QtQuick 2.4
import QtQuick.Controls 2.10
NextForm {
    property bool opened: false
    mouseArea2.onClicked: { console.log("hello");  opened = !opened; if (opened) pop.open();
}

    Popup {
        background: Rectangle {anchors.fill: parent;color: "white"}
        y: parent.height / 2 + 70
        id:pop
        Label {text: "Оплата осуществляется с помщью\nсохраненной карты в приложении\nили наличными на точке проката"}
    }
    mouseArea1.onClicked: {console.log("hello");  opened = !opened; if (opened) pop.open();
}
    mouseArea.onClicked: {stack.pop()
}
    gonext.onClicked: {stack.push ("Next2.qml")
    }
  //  mouseArea.onClicked: {stack.pop()
    //}
   // button.onClicked: { stack.push ("Next2.qml")
   // }
}
