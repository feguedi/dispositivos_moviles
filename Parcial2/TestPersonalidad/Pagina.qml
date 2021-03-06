import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1

Pane {
    id: pane
    property alias ter: cmb_ter
    property alias acu: cmb_acu
    property alias vol: cmb_vol
    width: 100

    ColumnLayout {
        anchors.rightMargin: 20
        anchors.leftMargin: 20
        anchors.bottomMargin: 20
        anchors.topMargin: 20
        anchors.fill: parent
        spacing: 20

        Column {
            id: column
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            spacing: 5
            Layout.fillWidth: true

            Label {
                text: qsTr("Terrestres")
                leftPadding: 5
                padding: 0
            }

            ComboBox {
                id: cmb_ter
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.right: parent.right
                anchors.rightMargin: 0
                // anchors.right: parent.right
                // anchors.rightMargin: 0
                // anchors.left: parent.left
                // anchors.leftMargin: 0
                Layout.fillWidth: true
                textRole: "text"
                model: ListModel {
                    ListElement { text: ""; value: 0 }
                    ListElement { text: "León"; value: 1 }
                    ListElement { text: "Jirafa"; value: 2 }
                    ListElement { text: "Venado"; value: 3 }
                }

            }
        }

        Column {
            id: column1
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            spacing: 5
            Layout.fillWidth: true

            Label {
                text: qsTr("Acuáticos")
                leftPadding: 5
            }

            ComboBox {
                id: cmb_acu
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.right: parent.right
                anchors.rightMargin: 0
                // anchors.right: parent.right
                // anchors.rightMargin: 0
                // anchors.left: parent.left
                // anchors.leftMargin: 0
                Layout.fillWidth: true
                textRole: "text"
                model: ListModel {
                    ListElement { text: ""; value: 0 }
                    ListElement { text: "Delfín"; value: 1 }
                    ListElement { text: "Tiburón"; value: 2 }
                    ListElement { text: "Piraña"; value: 3 }
                }
            }
        }

        Column {
            id: column2
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            spacing: 5
            Layout.fillWidth: true

            Label {
                text: qsTr("Voladores")
                leftPadding: 5
            }

            ComboBox {
                id: cmb_vol
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.right: parent.right
                anchors.rightMargin: 0
                // anchors.left: parent.left
                // anchors.leftMargin: 0
                // anchors.right: parent.right
                // anchors.rightMargin: 0
                Layout.fillWidth: true
                textRole: "text"
                model: ListModel {
                    ListElement { text: ""; value: 0 }
                    ListElement { text: "Cóndor"; value: 1 }
                    ListElement { text: "Buitre"; value: 2 }
                    ListElement { text: "Paloma"; value: 3 }
                }
            }
        }
    }
}
