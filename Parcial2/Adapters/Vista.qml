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
                model: ["--"]
                ListModel {
                    id: mIntr
                    ListElement { text: "Melancolico"; value: "M" }
                    ListElement { text: "Flematico"; value: "F" }
                }
                ListModel {
                    id: mExtr
                    ListElement { text: "Colerico" }
                    ListElement { text: "Sanguineo" }
                }

                function in2ex() {
                    cmbTemp.model = mExtr
                }
                function ex2in() {
                    cmbTemp.model = mIntr
                }
            }
        }

        Text {
            id: descripcion
            text: qsTr("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at ullamcorper felis. Vivamus imperdiet diam orci, eu egestas felis placerat id. Nulla ut rhoncus libero. Donec dolor arcu, dapibus nec ex sed, sagittis vestibulum nibh. Proin pretium accumsan enim quis varius. Aenean eleifend blandit eros pretium faucibus.")
            wrapMode: Text.WordWrap
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            Layout.fillWidth: true
            font.pixelSize: 12
        }
    }

    function parseo() {
        var req = new XMLHttpRequest()
        req.open('GET', 'info.json', false)
        req.send(null)
        return JSON.parse(req.responseText)
    }
}
