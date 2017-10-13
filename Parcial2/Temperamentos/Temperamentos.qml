import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1

Flickable {
    id: root
    property string select: swMel.checked ? "Melancolico" : (swSan.checked ? "Sanguineo" : (swCol.checked ? "Colerico" : (swFle.checked ? "Flematico" : "Default")))
    property alias mel: swMel
    property alias san: swSan
    property alias fle: swFle
    property alias col: swCol

    Pane {
        anchors.fill: parent

        ColumnLayout {
            id: layoutRoot
            anchors.fill: parent

            ColumnLayout {
                id:layoutIntro
                Label {
                    id: label
                    text: qsTr("Introvertidos")
                    font.pointSize: 32
                    verticalAlignment: Text.AlignVCenter
                }

                Switch {
                    id: swMel
                    text: qsTr("Melancólico")
                    onClicked: {
                        seleccionado()
                        checked = !checked
                        console.log(select)
                    }
                }

                Switch {
                    id: swFle
                    text: qsTr("Flemático")
                    onClicked: {
                        seleccionado()
                        checked = !checked
                        console.log(select)
                    }
                }

            }
            ColumnLayout {
                id: layoutExtro
                Label {
                    id: label1
                    text: qsTr("Extrovertidos")
                    font.pointSize: 32
                    verticalAlignment: Text.AlignVCenter
                }

                Switch {
                    id: swCol
                    text: qsTr("Colérico")
                    onClicked: {
                        seleccionado()
                        checked = !checked
                        console.log(select)
                    }
                }

                Switch {
                    id: swSan
                    text: qsTr("Sanguíneo")
                    onClicked: {
                        seleccionado()
                        checked = !checked
                        console.log(select)
                    }
                }
            }
        }
    }

    function seleccionado() {
        swCol.checked = false
        swMel.checked = false
        swSan.checked = false
        swFle.checked = false
    }
}
