import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.0

Item {
    id: lbl
    height: 100
    property alias p1: pt1
    property alias p2: pt2
    property alias p3: pt3

    ColumnLayout {
        y: 35
        spacing: 15
        anchors.left: parent.left
        anchors.leftMargin: 8
        anchors.verticalCenter: parent.verticalCenter

        Label {
            id: pt1
            text: "Punto 1: "
            color: "#fafafa"
            font.pointSize: 24
            font.family: robotoFont
        }

        Label {
            id: pt2
            text: "Punto 2: "
            color: "#fafafa"
            font.pointSize: 24
            font.family: robotoFont
        }

        Label {
            id: pt3
            text: "Punto 3: "
            color: "#fafafa"
            font.pointSize: 24
            font.family: robotoFont
        }
    }

    FontLoader {
        id: robotoFont
        source: "src/Roboto/Roboto-Medium.ttf"
    }

    function reset() {
        pt1.text = "Punto 1: "
        pt2.text = "Punto 2: "
        pt3.text = "Punto 3: "
    }

    function chng(pt, txt) {
        pt.text += txt
    }
}
