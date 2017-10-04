import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 360
    height: 616
    title: qsTr("Adapters")

    Vista {
        id: vista
        anchors.fill: parent
    }
}
