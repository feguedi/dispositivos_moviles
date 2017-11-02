import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Controls.Material 2.0

Item {
    id: root
    clip: true
    property alias operadores: tabBar

    TabBar {
        id: tabBar
        anchors.fill: parent

        background: Rectangle {
            color: "#eee"
        }

        TabButton {
            text: "C"
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            width: 230
            font.family: "Roboto"
            font.pointSize: 46
            Material.accent: Material.Grey
        }
        TabButton {
            text: "←"
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            width: 230
            font.family: "Roboto"
            font.pointSize: 46
            Material.accent: Material.Grey
        }
        TabButton {
            text: "MOD"
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            width: 230
            font.family: "Roboto"
            font.pointSize: 46
            Material.accent: Material.Grey
        }
        TabButton {
            text: "EUC"
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            width: 230
            font.family: "Roboto"
            font.pointSize: 46
            Material.accent: Material.Grey
        }
        TabButton {
            text: "x²"
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            width: 230
            font.family: "Roboto"
            font.pointSize: 46
            Material.accent: Material.Grey
        }
        TabButton {
            text: "x³"
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            width: 230
            font.family: "Roboto"
            font.pointSize: 46
            Material.accent: Material.Grey
        }
        TabButton {
            text: "√"
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            width: 230
            font.family: "Roboto"
            font.pointSize: 46
            Material.accent: Material.Grey
        }
    }
}
