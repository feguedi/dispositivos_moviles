import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Window 2.3

Pane {
    id: mainPane
    property string seleccionMarinos: value

    Component.onCompleted: {
        lbl_perso.text = ai.setPers()
    }

    ColumnLayout {
        id: layoutMain
        anchors.fill: parent

        ColumnLayout {
            id: layoutMarinos
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Label {
                id: lbl_ac
                text: qsTr("Acuáticos")
            }

            RadioButton {
                id: radio_ac_1
                text: qsTr("Tiburón")
            }

            RadioButton {
                id: radio_ac_2
                text: qsTr("Delfín")
            }

            RadioButton {
                id: radio_ac_3
                text: qsTr("Mantarraya")
            }

        }

        ColumnLayout {
            id: layoutTerrestres
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            property int valTer: 0

            Label {
                id: lbl_ter
                text: qsTr("Terrestres")
            }

            RadioButton {
                id: radio_ter_1
                text: qsTr("Tigre")
            }

            RadioButton {
                id: radio_ter_2
                text: qsTr("Canguro")
            }

            RadioButton {
                id: radio_ter_3
                text: qsTr("Jirafa")
            }
        }

        ColumnLayout {
            id: layoutVoladores
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Label {
                id: lbl_vol
                text: qsTr("Voladores")
            }

            RadioButton {
                id: radio_vol_1
                text: qsTr("Águila")
            }

            RadioButton {
                id: radio_vol_2
                text: qsTr("Paloma")
            }

            RadioButton {
                id: radio_vol_3
                text: qsTr("Buho")
            }
        }

        Label {
            id: lbl_seleccion
            text: qsTr("Has seleccionado {0}, {1} y {2}")
            font.pointSize: 28
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: lbl_perso
            // text: qsTr("Has seleccionado {0}, {1} y {2}")
            font.pointSize: 28
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }
}
