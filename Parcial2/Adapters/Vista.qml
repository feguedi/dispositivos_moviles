import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.0

Pane {
    id: pane
    width: 400
    height: 600

    ColumnLayout {
        anchors.fill: parent

        ColumnLayout {
            id: colPers
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: true

            Label {
                id: lblPers
                text: qsTr("Personalidad")
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }

            ComboBox {
                id: cmbPers
                model: ["--", "Introvertido", "Extrovertido"]
                down: {
                    if(currentIndex == 1) cmbTemp.pers = "i"
                    else if(currentIndex == 2) cmbTemp.pers = "x"
                    else cmbTemp.pers = "d"
                    cmbTemp.cambio()
                    descripcion.cambio()
                }
            }
        }

        ColumnLayout {
            id: colTemp
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: true

            Label {
                id: lblTemp
                text: qsTr("Temperamento")
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }

            ComboBox {
                id: cmbTemp
                property string pers: "d"
                textRole: "text"
                model: pers === "x" ? mExtr : ( pers === "i" ? mIntr : "--" )

                ListModel {
                    id: mIntr
                    ListElement { text: "Default" }
                    ListElement { text: "Melancolico" }
                    ListElement { text: "Flematico" }
                }
                ListModel {
                    id: mExtr
                    ListElement { text: "Default" }
                    ListElement { text: "Colerico" }
                    ListElement { text: "Sanguineo" }
                }

                function cambio() {
                    switch(pers) {
                    case "x":
                        cmbTemp.model = mExtr
                        break;
                    case "i":
                        cmbTemp.model = mIntr
                        break;
                    default:
                        cmbTemp.model = "--"
                        break;
                    }
                }

                down: {
                    descripcion.cambio()
                }
            }
        }

        Label {
            id: descripcion
            text: parseo().Default
            wrapMode: Text.WordWrap
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            Layout.fillHeight: true
            Layout.fillWidth: true
            font.pixelSize: 12

            function cambio() {
                switch(cmbTemp.currentText) {
                case "Melancolico":
                    text = qsTr(parseo().Introvertidos.Melancolico)
                    break;
                case "Flematico":
                    text = qsTr(parseo().Introvertidos.Flematico)
                    break;
                case "Colerico":
                    text = qsTr(parseo().Extrovertidos.Colerico)
                    break;
                case "Sanguineo":
                    text = qsTr(parseo().Extrovertidos.Sanguineo)
                    break;
                default:
                    text = qsTr(parseo().Default)
                    break;
                }
            }
        }
    }

    function parseo() {
        var req = new XMLHttpRequest()
        req.open('GET', 'info.json', false)
        req.send(null)
        return JSON.parse(req.responseText)
    }
}
