import QtQuick
import QtQuick.Controls

Rectangle{
    id: root
    width: 220
    height: 80
    radius: 16

    property string title: "Sorter"
    property color textColor: "#8B96A2"
    property real value: 1.0
    property color startRange: ""
    property color endRange: ""

    Rectangle{
        width: parent.width * root.value
        height: parent.height
        radius: parent.radius

        gradient: Gradient {
            GradientStop { position: 0.0; color: root.startRange }
            GradientStop { position: 1.0; color: root.endRange }
        }

    }



}
