import QtQuick
import QtQuick.Shapes

Rectangle {
    id: root
    width: 260
    height: 20
    radius: height / 2
    color: "#2C3442"
    clip: true

    property color minColor: "#000000"
    property color maxColor: "#FFFFFF"

    Shape {
        anchors.fill: parent

        ShapePath {
            strokeWidth: 0
            fillGradient: LinearGradient {
                x1: 0; y1: 0
                x2: root.width; y2: 0   // ← links → rechts

                GradientStop { position: 0.0; color: root.minColor }
                GradientStop { position: 1.0; color: root.maxColor }
            }

            PathRectangle {
                x: 0
                y: 0
                width: root.width
                height: root.height
                radius: root.radius
            }
        }
    }
}
