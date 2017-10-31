import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.0
import "Operations.js" as Op

Page {
    id: root
    height: 1270
    width: 720

    property int nums: []

    Keyboard {
        id: keyboard
        y: 840
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
    }

    Cleat {
        id: cleat
        height: btnResultado.height
        clip: true
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: btnResultado.left
        anchors.rightMargin: 8
        anchors.bottom: keyboard.top
        anchors.bottomMargin: 0
    }

    Button {
        id: btnResultado
        width: 146
        height: 108
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.bottom: keyboard.top
        anchors.bottomMargin: 0
        font.family: "Roboto"
        font.pointSize: 46
        highlighted: true
        Material.accent: Material.Orange
        text: qsTr("=")
    }

    Display {
        id: display
        anchors.bottom: cleat.top
        anchors.bottomMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
    }
}
