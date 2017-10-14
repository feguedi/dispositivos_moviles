import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Test de Personalidad")

    property var txt: "Tienes una personalidad "
    property var valores: [pg.ter.currentIndex,
                           pg.vol.currentIndex,
                           pg.acu.currentIndex]
    property int total: valores[0] + valores[1] + valores[2]

    header: ToolBar {
        Material.foreground: "white"

        Label {
            text: qsTr("Test")
            font.pixelSize: (parent.height * 56) / 100
            anchors.fill: parent
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            color: "white"
        }
    }

    StackView {
        id: stackView
        anchors.fill: parent

        ColumnLayout {
            id: col_SV
            anchors.fill: parent

            Flickable {
                id: flck
                implicitHeight: parent.height * 0.7
                flickableDirection: Flickable.VerticalFlick
                ScrollIndicator.vertical: ScrollIndicator { }
                contentHeight: parent.height * 0.5
                Layout.fillWidth: true

                Pagina {
                    id: pg
                    anchors.fill: parent
                    vol.pressed: {
                        lbl_resultado.actualiza()
                    }
                    acu.pressed: {
                        lbl_resultado.actualiza()
                    }
                    ter.pressed: {
                        lbl_resultado.actualiza()
                    }
                }
            }

            Item {
                Layout.fillWidth: true
                Layout.fillHeight: true

                Label {
                    id: lbl_resultado
                    anchors.fill: parent
                    anchors.margins: 20
                    background: Rectangle {
                        color: "#263238"
                        layer.enabled: true
                        layer.effect: DropShadow {
                            horizontalOffset: 0
                            verticalOffset: 0
                            radius: 8.0
                            samples: 17
                            spread: 0.2
                            color: "#80000000"
                        }
                    }
                    // text: valores[0] !== 0 && valores[1] !== 0 && valores[2] !== 0 ? qsTr(txt + actualiza()) : qsTr("")
                    font.pointSize: 24
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    color: "white"

                    function actualiza() {
                        switch(total){
                        case 1:
                            lbl_resultado.text = txt + "fuerte"
                            break

                        case 2:
                            if(valores[0] === 2 || valores[1] === 2 || valores[2] === 2) {
                                lbl_resultado.text = txt + "fluida"
                            }
                            else {
                                lbl_resultado.text = txt + "fuerte"
                            }
                            break

                        case 3:
                            if(valores[0] === 3 || valores[1] === 3 || valores[2] === 3) {
                                lbl_resultado.text = txt + "noble"
                            }
                            else if(valores[0] === 2 || valores[1] === 2 || valores[2] === 2) {
                                lbl_resultado.text = txt + "fuerte y fluida"
                            }
                            else {
                                lbl_resultado.text = txt + "fuerte"
                            }
                            break

                        case 4:
                            if(valores[0] === 1 || valores[1] === 1 || valores[1] === 1) {
                                lbl_resultado.text = txt + "fuerte y noble"
                            }
                            else {
                                lbl_resultado.text = txt + "fluida"
                            }
                            break

                        case 5:
                            if(valores[0] === 1 || valores[1] === 1 || valores[2] === 1){
                                lbl_resultado.text = txt + "fluida y fuerte"
                            }
                            else if(valores[0] === 0 || valores[1] === 0 || valores[2] === 0) {
                                lbl_resultado.text = txt + "fluida y noble"
                            }
                            break

                        case 6:
                            lbl_resultado.text = txt + "fuerte, fluida y noble"
                            break

                        case 7:
                            if(valores[0] === 1 || valores[1] === 1 || valores[2] === 1) {
                                lbl_resultado.text = txt + "noble y fuerte"
                            }
                            else if(valores[0] === 2 || valores[1] === 2 || valores[2] === 2) {
                                lbl_resultado.text = txt + "fluido y noble"
                            }
                            break

                        case 8:
                            if(valores[0] === 2 || valores[1] === 2 || valores[2] === 2) {
                                lbl_resultado.text = txt + "noble y fluido"
                            }
                            break

                        case 9:
                            lbl_resultado.text = txt + "noble"
                            break

                        default:
                            lbl_resultado.text = ""
                            break
                        }
                    }
                }
            }
        }

    }
}
