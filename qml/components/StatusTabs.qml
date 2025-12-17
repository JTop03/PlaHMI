import QtQuick 2.15

Rectangle{
    id: root
    width: 200
    height: 100
    radius: 16
    color: "#475059"

    property string title: ""
    property string value: ""
    property color valueColor: "white"

    signal clicked

    Column{
        anchors.fill: parent
        anchors.margins: 16
        spacing: 8
    }

    Text{
        anchors.centerIn: parent
        text: root.title
        color: "#8B96A2"
        font.pixelSize: 16
    }
    Text{
        anchors.centerIn: parent
        text: root.value
        color: root.color
        font.pixelSize: 28
        font.bold: true
    }



}
