import QtQuick 2.4
import QtQuick.Controls 2.3

Next2Form {
    Popup {

        y: parent.height / 2 + 70
        x: parent.width / 2 - 488
        background: Rectangle {anchors.fill: parent;color: "white"}
        id:pop
        Label {font.pixelSize: 50; text: "Воспользуйтесь кодом на месте проката,\n откройте в личном кабинете и\nотсканируйте его"}
    }
    button.onClicked: {stack.pop(); stack.pop(); stack.pop(); stack.pop()
}
//    back.onClicked: {stack.pop()
//    }
    property bool opened: false
    mouseArea.onClicked: { console.log("hello");  opened = !opened; if (opened) pop.open();
}
   // mouseArea2.onClicked: { console.log("hello");  opened = !opened; if (opened) pop.open();

   // mouseArea1.onClicked: {console.log("hello");  opened = !opened; if (opened) pop.open();
}
