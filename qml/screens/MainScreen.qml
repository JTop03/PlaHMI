import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../components"
import "../layouts"
Item {
    required property StackView stack
    anchors.fill: parent

    MainScreenLayout {
    anchors.fill: parent
    activeColors: 6
    machineStatus: "IDLE"
    beltSpeed: 100

        onColorsClicked: {
            stack.push("ColorSettings.qml")
        }
        onSpeedClicked: {
            stack.push("SpeedSettings.qml")
        }
    }
    Button {
        text: "Color Settings"
        onClicked: {
            stack.push("ColorSettings.qml")
        }
    }

    StartButton {
        anchors.centerIn: parent
        onClicked: {
            console.log("machine started")
        }
    }
}
