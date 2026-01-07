import QtQuick 2.15

Rectangle{
    id: root
    width: 220
    height: 80
    radius: 16

    property string title: ""
    property string value: ""
    property color valueColor: "white"
    property color startColor: "#475059"
    property color pressedColor: "#524D4B"
    property color textColor: "#8B96A2"

    color: startColor

    signal clicked

   Column{
        anchors.centerIn: parent
         anchors.margins: 10
        spacing: 6


    Text{
        text: root.title
        color: root.textColor
        font.pixelSize: 16
        }
    Text{
        text: root.value
        color: root.valueColor
        font.pixelSize: 28
        font.bold: true
        }
    }
    MouseArea {
        anchors.fill: parent

        onPressed: root.color = root.pressedColor
        onReleased: root.color = root.startColor
        onClicked: root.clicked()
    }

}
