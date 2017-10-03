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
                model: ["Introvertido", "Extrovertido"]                
                onAccepted: {
                    cmbTemp.cambio()
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
                model: ["--"]
                ListModel {
                    id: mIntr
                    ListElement { text: "Default"; value: "d" }
                    ListElement { text: "Melancolico"; value: "m" }
                    ListElement { text: "Flematico"; value: "f" }
                }
                ListModel {
                    id: mExtr
                    ListElement { text: "Default"; value: "d" }
                    ListElement { text: "Colerico"; value: "c" }
                    ListElement { text: "Sanguineo"; value: "s" }
                }

                function cambio() {
                    switch(pers) {
                        case "x":
                            cmbTemp.model = mExtr
                        break;
                        case "i":
                            cmbTemp.model = mIntr
                        default:
                        break;
                    }
                }

                onAccepted: {
                    pers = model.value
                    descripcion.cambio()
                }
            }
        }

        Text {
            id: descripcion
            text: parseo().Default
            wrapMode: Text.WordWrap
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            Layout.fillWidth: true
            font.pixelSize: 12

            function cambio() {
                switch(cmbTemp.pers) {
                    case "m":
                        text = parseo().Introfertidos.Melancolico
                    break;
                    case "f":
                        text = parseo().Introfertidos.Flematico
                    break;
                    case "c":
                        text = parseo().Introfertidos.Colerico
                    break;
                    case "s":
                        text = parseo().Introfertidos.Sanguineo
                    break;
                    default:
                        text = parseo().Default
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
