import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.0

Item {
    id: root

    property alias boton9: btn9
    property alias boton8: btn8
    property alias boton7: btn7
    property alias boton6: btn6
    property alias boton5: btn5
    property alias boton4: btn4
    property alias boton3: btn3
    property alias boton2: btn2
    property alias boton1: btn1
    property alias boton0: btn0
    property alias botonSum: btnSum
    property alias botonRes: btnRes
    property alias botonDiv: btnDiv
    property alias botonMult: btnMult
    property alias botonPto: btnPunto
    property alias botonInv: btnInv

    Rectangle {
        id: rectangle
        color: "#fff"
        anchors.fill: parent

        GridLayout {
            id: layout_num
            anchors.top: parent.top
            anchors.topMargin: 0
            columnSpacing: 8
            rowSpacing: 0
            anchors.right: parent.right
            anchors.rightMargin: (root.width / 4) + 6
            anchors.left: parent.left
            anchors.leftMargin: 3
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            rows: 4
            columns: 3

            Button {
                id: btn7
                text: qsTr("7")
                font.family: "Roboto"
                font.pointSize: 28
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                flat: true
            }

            Button {
                id: btn8
                text: qsTr("8")
                font.family: "Roboto"
                font.pointSize: 28
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                flat: true
            }

            Button {
                id: btn9
                text: qsTr("9")
                font.family: "Roboto"
                font.pointSize: 28
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                flat: true
            }

            Button {
                id: btn4
                text: qsTr("4")
                font.family: "Roboto"
                font.pointSize: 28
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                flat: true
            }

            Button {
                id: btn5
                text: qsTr("5")
                font.family: "Roboto"
                font.pointSize: 28
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                flat: true
            }

            Button {
                id: btn6
                text: qsTr("6")
                font.family: "Roboto"
                font.pointSize: 28
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                flat: true
            }

            Button {
                id: btn1
                text: qsTr("1")
                font.family: "Roboto"
                font.pointSize: 28
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                flat: true
            }

            Button {
                id: btn2
                text: qsTr("2")
                font.family: "Roboto"
                font.pointSize: 28
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                flat: true
            }

            Button {
                id: btn3
                text: qsTr("3")
                font.family: "Roboto"
                font.pointSize: 28
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                flat: true
            }

            Button {
                id: btnInv
                text: qsTr("+/-")
                font.family: "Roboto"
                font.pointSize: 28
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                flat: true
            }

            Button {
                id: btn0
                text: qsTr("0")
                font.family: "Roboto"
                font.pointSize: 28
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                flat: true
            }

            Button {
                id: btnPunto
                text: qsTr(".")
                font.family: "Roboto"
                font.pointSize: 28
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                flat: true
            }
        }

        ColumnLayout {
            id: layout_op
            anchors.top: parent.top
            anchors.topMargin: 0
            spacing: 0
            anchors.left: layout_num.right
            anchors.leftMargin: 6
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 3

            Button {
                id: btnSum
                text: qsTr("+")

                font.family: "Roboto"
                font.pointSize: 28
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                flat: true
            }

            Button {
                id: btnRes
                text: qsTr("-")
                font.family: "Roboto"
                font.pointSize: 28
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                flat: true
            }

            Button {
                id: btnMult
                text: qsTr("×")
                font.family: "Roboto"
                font.pointSize: 28
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                flat: true
            }

            Button {
                id: btnDiv
                text: qsTr("÷")
                font.family: "Roboto"
                font.pointSize: 28
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                flat: true
            }
        }
    }
}
