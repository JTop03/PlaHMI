import QtQuick
import QtQuick.Layouts
import "../components"

Rectangle {
    id: root
    width: 250
    height: 120
    radius: 16
    color: "#3A4558"

    property int sorterId: 1
    property real accuracy: 0.85
    property color minColor: "#FF0000"
    property color maxColor: "#FF8000"

    signal clicked

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 16
        spacing: 10

        Text {
            text: "Sorter #" + root.sorterId
            color: "#AFC4D6"
            font.pixelSize: 14
        }

        ColorRangeBar {
            Layout.fillWidth: true
            minColor: root.minColor
            maxColor: root.maxColor
        }

        RowLayout {
            Layout.fillWidth: true

            Text {
                text: "Accuracy"
                color: "#AFC4D6"
                font.pixelSize: 14
            }

            Item { Layout.fillWidth: true }

            Text {
                text: Math.round(root.accuracy * 100) + "%"
                color: "#2ECC71"
                font.pixelSize: 16
                font.bold: true
            }
        }
    }
}
