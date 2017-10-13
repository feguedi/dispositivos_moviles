import QtQuick 2.7
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

ApplicationWindow {
    id: window
    visible: true
    width: w
    height: 480
    title: qsTr("Temperamentos")

    property int w: 640

    header: ToolBar {
        background: Rectangle {
            anchors.fill: parent
            gradient: Gradient {
                GradientStop {
                    position: 0.95;
                    color: "#006064";
                }
                GradientStop {
                    position: 1.00;
                    color: "#ffffff";
                }
            }
        }

        RowLayout {
            anchors.fill: parent

            Label {
                anchors.fill: parent
                text: qsTr("Temperamentos")
                color: "#ddd"
                font {
                    weight: Font.Light
                    capitalization: Font.AllUppercase
                    pointSize: 28
                    family: "Helvetica Neue"
                }
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }

    StackView {
        id: stackView
        anchors.fill: parent

        ColumnLayout {
            anchors.fill: parent
            anchors.margins: 20
            spacing: 15

            ScrollView {
                id: scrollTemp
                Layout.fillHeight: true
                Layout.fillWidth: true
                clip: true
                ScrollBar.vertical: ScrollBar { }

                Temperamentos {
                    id: temperamentos
                    anchors.fill: scrollTemp

                    mel.onClicked: descripcion.actualizar()
                    fle.onClicked: descripcion.actualizar()
                    col.onClicked: descripcion.actualizar()
                    san.onClicked: descripcion.actualizar()
                }
            }

            ScrollView {
                id: scrollDesc
                Layout.fillHeight: true
                ScrollBar.vertical: ScrollBar { }
                clip: true

                Descripcion {
                    id: descripcion
                    anchors.fill: parent
                    p.width: w

                    function actualizar() {
                        switch(temperamentos.select) {
                        case 'Melancolico':
                            desc = qsTr(parseo().Introvertidos.Melancolico);
                            break;
                        case 'Flematico':
                            desc = qsTr(parseo().Introvertidos.Flematico);
                            break;
                        case 'Colerico':
                            desc = qsTr(parseo().Extrovertidos.Colerico);
                            break;
                        case 'Sanguineo':
                            desc = qsTr(parseo().Extrovertidos.Sanguineo);
                            break;
                        case 'Default':
                            desc = qsTr(parseo().Default);
                            break;
                        }
                    }
                }

                DropShadow {
                    anchors.fill: parent
                    horizontalOffset: 3
                    verticalOffset: 3
                    radius: 8.0
                    samples: 17
                    color: "#80000000"
                    source: descripcion
                }
            }
        }
    }



    Component.onCompleted: {
        console.log("Ancho ventana: ", window.w)
        console.log("Tamaño ancho: ", descripcion.width)
    }
}
