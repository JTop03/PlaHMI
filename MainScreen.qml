import QtQuick
import QtQuick.Controls
Item {
    width: parent.width
    height: parent.height
}
Button{
    text: "Color Settings"
    onClicked: {
        stack.push("Screen/ColorSettings")
    }
}
