import QtQuick
import QtQuick.Controls
Item {
    required property StackView stack
    anchors.fill: parent


    Button {
        text: "Color Settings"
        onClicked: {
            stack.push("ColorSettings.qml")
        }
    }
    Rectangle {
        width: 110
        height: 110
        radius: width / 2
        color: "#2ECC71"

        Text{
            text: "START"
            anchors.fill: parent
            color: "white"
            font.pixelSize: 24
        }
        MouseArea {
        anchors.fill: parents

        onPressed: color = "#27ae60"
        onReleased: color = "#2ecc71"
        onClicked: console.log("machine started")
        }
    }
}

