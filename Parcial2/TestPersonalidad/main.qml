import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Test de Personalidad")

    header: ToolBar {
        Material.foreground: "white"

        Label {
            text: qsTr("Test")
            font.pixelSize: (parent.height * 56) / 100
            anchors.fill: parent
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            color: "white"
        }
    }

    StackView {
        id: stackView
        anchors.fill: parent

        ColumnLayout {
            id: col_SV
            anchors.fill: parent

            Pagina {
                id: pg
                height: window.height * 0.8
                // anchors.fill: parent
                Layout.fillWidth: true
                // Layout.fillHeight: true
            }

            Label {
                id: lbl_resultado
                Layout.fillWidth: true
                Layout.fillHeight: true
                anchors.margins: 20
                color: "white"
                background: Rectangle {
                    color: "darkgray"
                }

                text: qsTr("Lorem Ipsum")
            }
        }
    }
}
