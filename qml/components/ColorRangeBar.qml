import QtQuick

Rectangle {
    id: root
    width: 260
    height: 20
    radius: 10
    color: "#2C3442"

    property color minColor: "#000000"
    property color maxColor: "#FFFFFF"

    Rectangle{
        anchors.fill: parent
        radius: parent.radius

        gradient: Gradient {
            GradientStop { position: 0.0; color: root.minColor}
            GradientStop { position: 1.0; color: root.maxColor}
        }
    }
}
