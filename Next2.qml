import QtQuick 2.4
import QtQuick.Controls 2.3

Next2Form {
    button.onClicked: {stack.pop(); stack.pop(); stack.pop(); stack.pop()
}
//    back.onClicked: {stack.pop()
//    }
    property bool opened: false
    mouseArea.onClicked: { console.log("hello");  opened = !opened; if (opened) pop.open();
}
   // mouseArea2.onClicked: { console.log("hello");  opened = !opened; if (opened) pop.open();
    Popup {
        background: Rectangle {anchors.fill: parent;color: "white"}
        y: parent.height / 2 + 70
        id:pop
        Label {text: "/Воспользуйтесь кодом на месте проката,\n откройте в личном кабинете и\nотсканируйте его"}
    }
   // mouseArea1.onClicked: {console.log("hello");  opened = !opened; if (opened) pop.open();
}
