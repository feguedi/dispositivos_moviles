import QtQuick 2.0
import QtQuick.Controls 2.2
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

        Repeater {
            model: ["C", "←", "MOD", "EUC", "x²", "√"]

            TabButton {
                text: modelData
                anchors.bottom: parent.bottom
                anchors.top: parent.top
                width: 230
                font.family: "Roboto"
                font.pointSize: 46
                font.weight: "Light"
                Material.accent: Material.Grey
            }
        }
    }
}
