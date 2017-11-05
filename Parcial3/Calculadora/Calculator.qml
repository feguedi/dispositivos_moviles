import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Controls.Material 2.0
import "Operations.js" as Op

Page {
    id: root

    property var vals: []
    property var ops: []
    property string res
    property double num

    Keyboard {
        id: keyboard
        height: (root.height * 2) / 5
        width: root.width
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0

        boton0.onClicked: Op.numeros(0, display)
        boton1.onClicked: Op.numeros(1, display)
        boton2.onClicked: Op.numeros(2, display)
        boton3.onClicked: Op.numeros(3, display)
        boton4.onClicked: Op.numeros(4, display)
        boton5.onClicked: Op.numeros(5, display)
        boton6.onClicked: Op.numeros(6, display)
        boton7.onClicked: Op.numeros(7, display)
        boton8.onClicked: Op.numeros(8, display)
        boton9.onClicked: Op.numeros(9, display)
        botonPto.onClicked: Op.numeros(".", display)

        botonSum.onClicked: { num = display.resultado; vals.push("+"); Op.suma(display, num) }
        botonRes.onClicked: { num = display.resultado; vals.push("-"); Op.resta(display, num) }
        botonMult.onClicked: { num = display.resultado; vals.push("*"); Op.multiplicacion(display, num) }
        botonDiv.onClicked: { num = display.resultado; vals.push("/"); Op.division(display, num) }
    }

    Cleat {
        id: cleat
        height: btnResultado.height
        ancho: root.width / 4
        clip: true
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: btnResultado.left
        anchors.rightMargin: 8
        anchors.bottom: keyboard.top
        anchors.bottomMargin: 0

        cuadrado.onClicked: display.resultado = Math.pow(display.resultado, 2)
        cubo.onClicked: display.resultado = Math.pow(display.resultado, 3)
        raiz.onClicked: display.resultado = Math.sqrt(display.resultado)
        modulo.onClicked: { num = display.resultado; vals.push("mod"); Op.chino(display, num) }

        borradoE.onClicked: {
            var sRes = ""
            for(var i = 0; i < display.resultado.length - 1; ++i) {
                sRes += display.resultado.charAt(i)
            }
            display.resultado = qsTr(sRes)
        }

        borradoC.onClicked: {
            vals.length = 0
            ops.length = 0
            res = ""
            num = 0
            display.resultado = ""
            display.valores = ""
            display.operador = ""
        }
    }

    Button {
        id: btnResultado
        width: root.width / 4
        height: (keyboard.height / 4) + 20
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.bottom: keyboard.top
        anchors.bottomMargin: 0
        font.family: "Roboto"
        font.pointSize: 46
        highlighted: true
        Material.accent: Material.Orange
        text: qsTr("=")

        onClicked: {
            display.operador = ""
            display.resultado = function() {
                num = display.resultado
                for(var i in vals.length) {
                    if (i < vals.length - 1) {
                        res = vals[i] + ops[i]
                    } else res += num
                }
                display.resultado = string(parseInt)
            }
        }
    }

    Display {
        id: display
        anchors.bottom: cleat.top
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.margins: 0
    }

    Component.onCompleted: {
        display.resultado = ""
        display.valores = ""
        display.operador = ""
    }
}
