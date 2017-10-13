import QtQuick 2.7
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    id: window
    title: qsTr("Práctica ScrollView")

    header: ToolBar {

        background: Rectangle {
            color: "#f7f7f7"
        }

        RowLayout {
            anchors.fill: parent
            Label {
                text: "La historia de ISIS"
                font.pixelSize: parent.height * 0.65
                color: "#010101"
                elide: Label.ElideMiddle
                horizontalAlignment: Qt.AlignHCenter
                anchors.verticalCenter: parent.verticalCenter
                Layout.fillWidth: true
            }
            ToolButton {
                text: qsTr("⋮")
                font.pixelSize: parent.height * 0.65
                anchors.verticalCenter: parent.verticalCenter
                onClicked: url.open()
            }
        }
    }

    ScrollView {
        id: scroll
        anchors.fill: parent
        clip: true

        Info {
            id: info
            anchors {
                top: parent.top
                bottom: parent.bottom

            }
        }
    }

    Dialog {
        id: url
        modal: true
        focus: true
        title: "URL"
        x: (window.width - width) / 2
        y: window.height / 6
        width: Math.min(window.width, window.height) / 3 * 2
        contentHeight: urlColumn.height

        Column {
            id: urlColumn
            spacing: 20

            Label {
                width: url.availableWidth
                textFormat: Text.RichText
                text: "www.resumenlatinoamericano.org/2015/11/20/estado-islamico-como-surge-el-isis/"
                wrapMode: Label.Wrap
                font.pixelSize: 12
            }
        }
    }

    Component.onCompleted: {
        info.ancho = window.width
        console.log("El alto de la imagen es: " + info.altoImg)
    }
}
