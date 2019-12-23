import QtQuick 2.4
import QtQuick 2.0
import QtPositioning 5.5
import QtLocation 5.6
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
Page {
    header: ToolBar {
        Layout.topMargin: 0
        Layout.fillWidth: true
        height: parent.height / 9.9

        id: toolBar

        RowLayout {
            Layout.topMargin: 0
            Layout.fillWidth: true
            anchors.fill: parent
        Item {
            Layout.maximumHeight: parent.height
            Layout.maximumWidth: parent.width / 5
            Layout.preferredHeight: parent.height
            Layout.preferredWidth: parent.width / 5
        Image {
            anchors.fill: parent
            id: image5
            source: "ic_keyboard_backspace_black_48dp.png"
            fillMode: Image.PreserveAspectFit
            MouseArea {anchors.fill: parent; onClicked: stack.pop()}
        }
        }
        Text {
            Layout.alignment: Qt.AlignHCenter
            id: element
            color: "#ffffff"
            text: qsTr("Выберите прокат")
            font.bold: true
            font.pointSize: 27
        }
        Item {
            Layout.alignment: Qt.AlignRight
            Layout.maximumHeight: parent.height
            Layout.maximumWidth: parent.width / 5
            Layout.preferredHeight: parent.height
            Layout.preferredWidth: parent.width / 5
        Image {

            MouseArea {
                id: filter
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.fill: parent
                onClicked: stack.push("Filter_.qml")

            }
            id: image111
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            source: "72961-200.png"
        }
        }
    }
    }
    Map {
        transformOrigin: Item.Center

        Plugin {
        id: myPlugin
        name: "osm" // "mapboxgl", "esri", ...
        //specify plugin parameters if necessary
        //PluginParameter {...}
        //PluginParameter {...}
        //...
    }

    id: map
    anchors.fill: parent
    plugin: myPlugin;
    center: QtPositioning.coordinate(49.9885475, 36.2329460)
    zoomLevel: 14
        ListModel {
            id: markers

            ListElement {
                title: "Сумская, 37"
                loc1: 50.003303
                loc2: 36.233829
            }
            ListElement {
                 title: "Пушкинская, 25"
                loc1: 49.996639
                loc2: 36.237436
            }
            ListElement {
                 title: "Московский проспект, 15"
                loc1: 49.989413
                loc2: 36.236462
            }
            ListElement {
                 title: "ул. Академика Павлова, 63"
                loc1: 49.990438
                loc2: 36.287125
            }
        }
        MapItemView {
            model: markers
            delegate: MapQuickItem {
                coordinate: QtPositioning.coordinate(loc1, loc2)

                anchorPoint.x: image.width * 0.5
                anchorPoint.y: image.height

                sourceItem: Column {


                    Image {
                        MouseArea {anchors.fill: parent;
                        onClicked: {zabron.visible = true; zabron.street = title} }
                        id: image; width: 60; height: 60; source: "ic_location_on_black_48dp.png" }
                    Text { text: title; /*font.bold: true*/ }
                }
            }
        }
        ColumnLayout {

            Layout.topMargin: 0
            anchors.fill: parent




        Image {
            id: image3
            source: "ic_zoom_in_black_48dp.png"
            fillMode: Image.PreserveAspectFit
            MouseArea {anchors.fill: parent; onClicked: map.zoomLevel += 0.1}
        }

        Image {
            id: image4
            source: "ic_zoom_out_black_48dp.png"
            fillMode: Image.PreserveAspectFit
             MouseArea {anchors.fill: parent; onClicked: map.zoomLevel -= 0.1}
        }



        Pane {
            property alias street : element1.text
            visible: false
            id: zabron
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: parent.width - 20
            Layout.preferredHeight: parent.height / 5
            background: Rectangle {
            color: "#ffffff"
            radius: 18
            border.width: 0
            }

            ColumnLayout {
                anchors.fill: parent


            RowLayout {
                Layout.fillWidth: true
                Item {
                    Layout.maximumHeight: parent.height
                    Layout.maximumWidth: parent.width / 4.5
                    Layout.preferredHeight: parent.height
                   Layout.preferredWidth: parent.width / 4.5
            Image {
                anchors.fill: parent
                 visible: zabron.visible
                id: image2
                fillMode: Image.PreserveAspectFit
                source: "ic_location_on_black_48dp.png"
            }
                }
                Item {Layout.fillWidth: true}

            Text {
                Layout.rightMargin: 120
                Layout.alignment: Qt.AlignLeft
                font.pointSize: 30
                visible: parent.visible
                id: element1
                text: qsTr("ул. Сумская, 37")
            }
            }
            Item {
               Layout.fillHeight: true
            }

            RowLayout {
                Layout.fillWidth: true
                Item {

                    Layout.maximumHeight: parent.height
                    Layout.maximumWidth: parent.width / 4.5
                    Layout.preferredHeight: parent.height
                   Layout.preferredWidth: parent.width / 4.5
            Image {
                anchors.fill: parent
                visible: zabron.visible
                id: image1
                fillMode: Image.PreserveAspectFit
                source: "1332193-200.png"
            }

                }
                Item {Layout.fillWidth: true}
            Button {
                Layout.rightMargin: 150
                 visible: parent.visible
                id: button

                font.pointSize: 30
                text: "Забронировать"
                onClicked: stack.push("Bronj.qml", {"street.text": element1.text})
            }
            }

        }
        }

    }

}
}

