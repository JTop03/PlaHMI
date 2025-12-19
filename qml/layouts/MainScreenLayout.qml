import QtQuick 2.15
import QtQuick.Layouts
import QtQuick.Controls
import "../components"

Item {
    id: root
    anchors.fill: parent

    property int activeColors: 6
    property string machineStatus:"IDLE"
    property int beltSpeed: 100

    signal startClicked
    signal speedClicked
    signal colorsClicked

    ColumnLayout {
        anchors.fill: parent
        spacing: 30
        Layout.margins: 50


        RowLayout {
            spacing: 45
            Layout.alignment: Qt.AlignHCenter
            Layout.topMargin: 50


            StatusTabs {
                title: "Machine Status"
                value: root.machineStatus
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

        StartButton{

        onClicked: root.startClicked()
        //anchors.centerIn: parent
        Layout.alignment: Qt.AlignCenter
        Layout.bottomMargin: 60
        }
    }
}
