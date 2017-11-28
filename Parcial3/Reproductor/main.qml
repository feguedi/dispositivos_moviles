import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
// import QtQuick.Controls.Material 2.0

ApplicationWindow {
    visible: true
    width: 520
    height: 800
    title: qsTr("Reproductor")

    // Material.theme: Material.Dark
    // Material.accent: Material.Orange

    StackView {
        id: stackView
        anchors.fill: parent

        Player {
            id: plyr
            anchors.fill: parent
        }
    }
}
