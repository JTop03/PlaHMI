import QtQuick 2.15
import QtQuick.Layouts
import QtQuick.Controls
import "../components"

Item {
    id: root
    anchors.fill: parent

    signal settingsClicked
    signal speedClicked

GridLayout {
    columns: 3
    rowSpacing: 30
    columnSpacing: 16

    ColorRangeTab {
        sorterId: 1
        minColor: "#FF0000"
        maxColor: "#FF8000"
        accuracy: 0.85
    }

    ColorRangeTab {
        sorterId: 2
        minColor: "#00FF00"
        maxColor: "#00AA00"
        accuracy: 0.92
    }

    ColorRangeTab {
        sorterId: 3
        minColor: "#0055FF"
        maxColor: "#00C8FF"
        accuracy: 0.78
    }

    ColorRangeTab {
        sorterId: 4
        minColor: "#FFFF00"
        maxColor: "#FFD000"
        accuracy: 0.88
    }

    ColorRangeTab {
        sorterId: 5
        minColor: "#FF00FF"
        maxColor: "#FF77CC"
        accuracy: 0.95
    }

    ColorRangeTab {
        sorterId: 6
        minColor: "#FFFFFF"
        maxColor: "#DDDDDD"
        accuracy: 0.80
    }
}
ColorOverviewButtons {
    //title: "Color Sorters"

    onClicked: root.settingsClicked()
}
ColorOverviewButtons {
    onClicked: root.speedClicked()
}
}
