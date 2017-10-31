import QtQuick 2.0
import QtQuick.Controls 2.2

Rectangle {
    id: root
    property alias texto: txtDisp.text

    color: "black"

    Label {
        id: txtDisp
        anchors.fill: parent
        color: "white"
        textFormat: Text.RichText
        verticalAlignment: Text.AlignBottom
        horizontalAlignment: Text.AlignRight
        rightPadding: 10
        bottomPadding: 10
        font.weight: Font.Light

        text: "<font size=\"42\" />Ola ke ase <br>\n<font size=\"20\" />Ola ke ase"
    }
}
