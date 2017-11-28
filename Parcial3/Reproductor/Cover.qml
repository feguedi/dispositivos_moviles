import QtQuick 2.0
import QtQuick.Controls 2.2

Item {
    id: root
    width: height
    property alias cvr: img.source

    Image {
        id: img
        width: root.width - 20
        height: root.height - 20
        fillMode: Image.PreserveAspectFit
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        source: "./src/cover.jpg"
    }
}
