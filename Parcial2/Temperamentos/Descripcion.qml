import QtQuick 2.0
import QtQuick.Controls 2.1

Flickable {
    id: flick
    property alias desc: txt.text
    property alias ancho: flick.width
    property alias p: pane
    ScrollIndicator.vertical: ScrollIndicator { }

    Pane {
        id: pane
        anchors.fill: parent
        anchors.margins: 10

        background: Rectangle {
            color: "#e0f7fa"
        }

        Label {
            id: txt
            //width: ancho
            height: parent.height
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            // anchors.bottom: parent.bottom
            anchors.margins: 10
            wrapMode: Label.WordWrap
            elide: Text.ElideMiddle
            font {
                pointSize: 15
                family: "Droid Sans"
            }
            text: qsTr(parseo().Default)
            // padding: 5
            background: Rectangle {
                color: "transparent"
                border.color: "#000"
                border.width: 3
            }

            Component.onCompleted: {
                console.log("Ancho de label: ", ancho)
                flick.width = w
            }
        }
    }

    function parseo() {
        var req = new XMLHttpRequest();
        req.open('GET', 'info.json', false);
        req.send(null);
        return JSON.parse(req.responseText);
    }
}
