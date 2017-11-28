import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    id: root
    background: Rectangle {
        color: "#333"
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        anchors.margins: 20
        property var p1
        property var p2
        property var p3

        Canvas {
            id: cnv
            anchors.fill: parent
            contextType: "2d"
            property alias ctx: context

            onPaint: {
                ctx.transform()
                var cnt = 0
                if(mouseArea.pressed) {
                    do {
                        ctx.strokeStyle = "black"
                        ctx.arc(mouseArea.mouseX, mouseArea.mouseY, 10, 0, Math.PI * 2, false)

                        switch (cnt){
                        case 0:
                        case 1:
                        case 2:
                            cnt++
                            break
                        case 3:
                            cnt = 0
                            break
                        }
                    }while(true)
                }
            }

            Calculos {
                id: clc
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.margins: 0
            }

            function limpiar() {
                cnv.ctx.clearRect(0, 0, root.width, root.height)
                clc.reset()
                return false
            }
        }
    }

    Button {
        id: btn_limpiar
        text: qsTr("Limpiar")
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: cnv.limpiar()
    }
}
