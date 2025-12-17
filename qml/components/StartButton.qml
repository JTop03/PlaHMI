import QtQuick
import QtQuick.Controls


Rectangle {
    id: root
    width: 110
    height: 110
    radius: width / 2
    color: "#2ECC71"

    signal clicked

    Text{
        text: "START"
        anchors.centerIn: parent
        color: "white"
        font.pixelSize: 24
        font.bold: true
    }
    MouseArea {
    anchors.fill: parent

    onPressed: root.color = "#27ae60"
    onReleased: root.color = "#2ecc71"
    onClicked: root.clicked()
    }
}

