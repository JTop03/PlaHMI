import QtQuick
import QtQuick.Controls


Rectangle {
    id: root
    width: 220
    height: 220
    radius: width / 2

    property color startColor: "#2ECC71" // green start button
    property color pressedColor: "#27AE60"

    color: startColor

    signal clicked

    Text{
        text: "START"
        anchors.centerIn: parent
        color: "white"
        font.pixelSize: 40
        font.bold: true
    }
    MouseArea {
    anchors.fill: parent
    onPressed: root.color = root.pressedColor
    onReleased: root.color = root.startColor
    onClicked: root.clicked()
    }
}

