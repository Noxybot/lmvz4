import QtQuick 2.4
import QtQuick.Controls 2.1
BronjForm {
    property bool opened: false
    Popup {
        background: Rectangle {anchors.fill: parent;color: "white"}
        y: parent.height / 2 + 70
        id:pop
        Label {text: "Тариф часовой: 30 грн час\nШтраф 150 грн за каждый проср. час\nТариф дневной: 300 грн в день\nШтраф 3000 грн за каждый проср. день\nТариф месячный: 1000 грн за месяц\n Штраф 10000$ за каждый проср. месяц"}
    }
    mouseArea.onClicked: { console.log("hello");  opened = !opened; if (opened) pop.open();
}
    button.onClicked: {stack.push("Next.qml", {"street.text": street.text  , "tarif.text":tarif.currentText ,
                                      "time.text": hours.value.toString(), "type.text": type.currentText,
                                      "amount.text": amount.value.toString(), "totalsum.text": tarif.currentIndex == 0 ? 30 : (tarif.currentIndex == 1) ? 300 : 1000})
}
    mouseArea1.onClicked: {stack.pop()
    }
}
