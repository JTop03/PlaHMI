import QtQuick
import QtQuick.Controls
ApplicationWindow {
    width: 640
    height: 480
    visible: true

    background: Rectangle{
        color: "#0D0A40"
    }

    StackView{
        id: stack
        anchors.fill: parent

        initialItem: MainScreen{
            stack: stack
        }
    }
}
