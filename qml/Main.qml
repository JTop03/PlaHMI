import QtQuick
import QtQuick.Controls
import "screens"
ApplicationWindow {
    id: window
    width: 800
    height: 480
    visible: true

    background: Rectangle{
        color: "#141240"
    }

    StackView{
        id: stack
        anchors.fill: parent
        initialItem: MainScreen{
            stack: stack
        }
    }
}
