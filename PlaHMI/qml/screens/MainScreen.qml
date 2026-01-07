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
            stack.push("ColorOverview.qml", {stack: stack})
        }
        onSpeedClicked: {
            stack.push("SpeedSettings.qml", {stack: stack})
        }
    }
}
