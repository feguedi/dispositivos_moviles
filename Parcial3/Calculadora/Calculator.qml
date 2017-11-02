import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Controls.Material 2.0
import "Operations.js" as Op

Page {
    id: root
    height: 1270
    width: 720

    property var vals: []
    property double res

    Keyboard {
        id: keyboard
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

        botonSum.onClicked: Op.suma(display, vals)
        botonRes.onClicked: Op.resta(display, vals)
        botonMult.onClicked: Op.multiplicacion(display, vals)
        botonDiv.onClicked: Op.division(display, vals)
    }

    Cleat {
        id: cleat
        height: btnResultado.height
        clip: true
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: btnResultado.left
        anchors.rightMargin: 8
        anchors.bottom: keyboard.top
        anchors.bottomMargin: 0

        operadores.onCurrentIndexChanged: {
            switch (operadores.currentIndex) {
            case 0:
                console.log("Limpiando pantallas")
                display.resultado = ""
                display.valores = ""
                vals.length = 0
                break
            case 1:
                display.resultado = display.resultado.charAt(display.resultado.length - 1)
                break
            case 2:
                Op.chino()
                break
            case 3:
                Op.euclides()
                break
            case 4:
                Op.cuadrado()
                break
            case 5:
                Op.cubo()
                break
            case 6:
                Op.raiz()
                break
            }
        }
    }

    Button {
        id: btnResultado
        width: 146
        height: 108
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.bottom: keyboard.top
        anchors.bottomMargin: 0
        font.family: "Roboto"
        font.pointSize: 46
        highlighted: true
        Material.accent: Material.Orange
        text: qsTr("=")
    }

    Display {
        id: display
        operador: "+"
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
