import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Controls.Material 2.0

Item {
    id: root
    clip: true
    property int ancho
    property alias cuadrado: btnSq
    property alias cubo: btnCu
    property alias raiz: btnSqrt
    property alias modulo: btnMod
    property alias borradoE: btnE
    property alias borradoC: btnC

    TabBar {
        id: tabBar
        anchors.fill: parent

        background: Rectangle {
            color: "#eee"
        }

        TabButton {
            id: btnC
            text: "C"
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            width: ancho
            font.family: "Roboto"
            font.pointSize: 46
            Material.accent: Material.Grey
        }
        TabButton {
            id: btnE
            text: "←"
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            width: ancho
            font.family: "Roboto"
            font.pointSize: 46
            Material.accent: Material.Grey
        }
        TabButton {
            id: btnMod
            text: "MOD"
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            width: ancho
            font.family: "Roboto"
            font.pointSize: 46
            Material.accent: Material.Grey
        }
        TabButton {
            id: btnSq
            text: "x²"
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            width: ancho
            font.family: "Roboto"
            font.pointSize: 46
            Material.accent: Material.Grey
        }
        TabButton {
            id: btnCu
            text: "x³"
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            width: ancho
            font.family: "Roboto"
            font.pointSize: 46
            Material.accent: Material.Grey
        }
        TabButton {
            id: btnSqrt
            text: "√"
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            width: ancho
            font.family: "Roboto"
            font.pointSize: 46
            Material.accent: Material.Grey
        }
    }
}
