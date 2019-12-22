import QtQuick 2.4
import QtQuick 2.0
import QtPositioning 5.5
import QtLocation 5.6
import QtQuick.Controls 2.3
MapForm {

    z: 1
        Plugin {
        id: myPlugin
        name: "osm" // "mapboxgl", "esri", ...
        //specify plugin parameters if necessary
        //PluginParameter {...}
        //PluginParameter {...}
        //...
    }
  //  button.onClicked: {stack.push (Qt.resolvedUrl("Next.qml"))

    //filter.onClicked: { stack.push (Qt.resolvedUrl("Filter_.qml"))
  //  }

    Map {

        id: map
        anchors.fill: parent
        plugin: myPlugin;
        center: QtPositioning.coordinate(49.9885475, 36.2329460)
        zoomLevel: 13

        //        MapItemView {
        //            model: searchModel
        //            delegate: MapQuickItem {
        //                coordinate: place.location.coordinate

        //                anchorPoint.x: image.width * 0.5
        //                anchorPoint.y: image.height

        //                sourceItem: Column {
        //                    Image { id: image; source: "marker.png" }
        //                    Text { text: title; font.bold: true }
        //                }
        //            }
        //        }
       // z: 0

            //id: page
            width: 300
            height: 700
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
            //anchors.fill: parent
            ListModel {
                id: markers

                ListElement {
                    title: "сумская, 37"
                    loc1: 50.003303
                    loc2: 36.233829
                }
                ListElement {
                     title: "пушкинская, 25"
                    loc1: 49.996639
                    loc2: 36.237436
                }
                ListElement {
                     title: "московский проспект, 15"
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
                            id: image; width: 30; height: 30; source: "ic_location_on_black_48dp.png" }
                        Text { text: title; /*font.bold: true*/ }
                    }
                }
            }

            ToolBar {
                id: toolBar
                x: 0
                y: 0
                width: 300
                height: 50

                Text {
                    id: element
                    x: 73
                    y: 15
                    color: "#ffffff"
                    text: qsTr("Выберите прокат")
                    z: 5
                    font.bold: true
                    font.pixelSize: 17
                }

                Image {
                    id: image5
                    x: 0
                    y: -7
                    width: 50
                    height: 64
                    z: 5
                    source: "ic_keyboard_backspace_black_48dp.png"
                    fillMode: Image.PreserveAspectFit
                    MouseArea {anchors.fill: parent; onClicked: stack.pop()}
                }
                Image {
                    MouseArea {
                        id: filter
                        z: 25.543
                        anchors.rightMargin: 0
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        anchors.fill: parent
                        onClicked: stack.push("Filter_.qml")

                    }
                    id: image
                    x: 237
                    y: 0
                    width: 63
                    height: 50
                    fillMode: Image.PreserveAspectFit
                    source: "72961-200.png"
                }
            }

            Image {
                id: image3
                x: 247
                y: 259
                width: 44
                height: 45
                source: "ic_zoom_in_black_48dp.png"
                fillMode: Image.PreserveAspectFit
                MouseArea {anchors.fill: parent; onClicked: map.zoomLevel += 0.1}
            }

            Image {
                id: image4
                x: 241
                y: 310
                width: 59
                height: 44
                source: "ic_zoom_out_black_48dp.png"
                fillMode: Image.PreserveAspectFit
                 MouseArea {anchors.fill: parent; onClicked: map.zoomLevel -= 0.1}
            }



            Rectangle {
                property alias street : element1.text
                visible: false
                id: zabron
                x: 0
                y: 584
                width: 300
                height: 116
                color: "#ffffff"
                radius: 18
                border.width: 0

                Text {
                    visible: parent.visible
                    id: element1
                    x: 49
                    y: 21
                    text: qsTr("ул. Сумская, 37")
                    font.pixelSize: 12
                }

                Button {
                     visible: parent.visible
                    id: button
                    x: 91
                    y: 57
                    width: 189
                    height: 40
                    text: "Забронировать"
                    onClicked: stack.push("Bronj.qml", {"street.text": element1.text})
                }

            }
            Image {
                visible: zabron.visible
                id: image1
                x: 15
                y: 610
                width: 73
                height: 90
                fillMode: Image.PreserveAspectFit
                source: "1332193-200.png"
            }

            Image {
                 visible: zabron.visible
                id: image2
                x: 15
                y: 596
                width: 37
                height: 25
                fillMode: Image.PreserveAspectFit
                source: "ic_location_on_black_48dp.png"
            }


        }
    Item {
        height: 70
    }



}
