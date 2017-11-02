import QtQuick 2.7
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 720
    height: 1270
    title: qsTr("Calculadora Jacques")

    StackView {
        id: stackView
        anchors.fill: parent

        Calculator {
            anchors.fill: parent
        }
    }
}
