import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../components"
import "../layouts"

Item {
    required property StackView stack
    anchors.fill: parent

    ColorOverviewLayout{
    anchors.top: parent.top
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.topMargin: 30

    onSettingsClicked: {
        stack.push("ColorSettings.qml", {stack: stack})
        }

    onSpeedClicked:{
    stack.push("SpeedSettings.qml", {stack:stack})
    }
    }
    Button {
    text: "Back"
    onClicked: stack.pop()
    }


}
