import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../components"
import "../layouts"

Item {
    required property StackView stack
    anchors.fill: parent

    ColorOverviewLayout{
    anchors.fill: parent

    }
    Button {
    text: "Back"
    onClicked: stack.pop()
    }
    Button {
    text: "settings"
    onClicked: {
        stack.push("ColorSettings.qml")
        }
    }
}
