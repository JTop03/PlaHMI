   import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle{
    id: root
    width: 250
    height: 150
    radius: 20
    color: "#4200E6"

    signal clicked

    Column{
         anchors.centerIn: parent
          anchors.margins: 10
         spacing: 6


     Text{
         text: root.title
         color: root.textColor
         font.pixelSize: 16
         }
     Text{
         text: root.value
         color: root.valueColor
         font.pixelSize: 28
         font.bold: true
         }
     }
     MouseArea {
         anchors.fill: parent

         onPressed: root.color = root.pressedColor
         onReleased: root.color = root.startColor
         onClicked: root.clicked()
     }
}

