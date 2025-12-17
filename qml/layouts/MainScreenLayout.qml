import QtQuick 2.15
import QtQuick.Layouts
import "../components"

Item {
    id: root
    anchors.fill: parent

    property int activeColors: 6
    property string machineStatus:"IDLE"
    property int beltSpeed: 100

    signal startClicked
    signal statusClicked
    signal speedClicked
    signal colorsClicked

    ColumnLayout {
        anchors.fill: parent
        spacing: 40
        Layout.margins: 30

        RowLayout {
            spacing: 20
            Layout.alignment: Qt.AlignHCenter

            StatusTabs {
                title: "Machine Status"
                value: root.machineStatus
                onClicked: root.statusClicked()
            }

            StatusTabs {
                title: "Belt Speed"
                value: root.beltSpeed + " cm/min"
                valueColor: "#4DB8FF"
                onClicked: root.speedClicked()
            }

            StatusTabs {
                title: "Active Colors"
                value: root.activeColors + " / 6"
                valueColor: root.activeColors < 6 ? "#FFB347" : "#C77DFF"
                onClicked: root.colorsClicked()
            }
        }
        Item { Layout.fillHeight: true } // spacer

    }
}
