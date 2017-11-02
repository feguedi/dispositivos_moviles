import QtQuick 2.0
import QtQuick.Controls 2.1

Rectangle {
    id: root
    property alias valores: txtVals.text
    property alias resultado: txtResultado.text
    property alias operador: txtOperador.text

    color: "#212121"

    Label {
        id: txtVals
        anchors.fill: parent
        anchors.bottomMargin: 75
        textFormat: Text.RichText
        verticalAlignment: Text.AlignBottom
        horizontalAlignment: Text.AlignRight
        rightPadding: 10
        bottomPadding: 10
        font.weight: Font.Light
        font.pointSize: 28
        color: "#e0e0e0"

        text: "34"
    }

    Label {
        id: txtResultado
        verticalAlignment: Text.AlignVCenter
        anchors.top: txtVals.bottom
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        horizontalAlignment: Text.AlignRight
        rightPadding: 10
        font.pointSize: 42
        textFormat: Text.RichText
        color: "#e0e0e0"

        text: "8"
    }

    Label {
        id: txtOperador
        font.pointSize: 46
        leftPadding: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: txtVals.bottom
        anchors.topMargin: 0
        verticalAlignment: Text.AlignVCenter
        color: "#e0e0e0"

        text: qsTr("")
    }
}
