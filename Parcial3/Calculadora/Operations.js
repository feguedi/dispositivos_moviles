.pragma library

function numeros(btn, display) {
    console.log("Se presionó la tecla " + btn)
    if (btn === ".") {
        if (display.resultado.length > 0) {
            var chck = false

            for (var i in display.resultado) {

                if (display.resultado.charAt(i) != ".") {

                    if (i == display.resultado.length - 1 && chck == false)
                        display.resultado += btn
                } else
                    chck = true
            }
        } else
            display.resultado = "0."
    } else if (btn == "0") {

        if (display.resultado.length > 0) {
            display.resultado += btn
        }
    } else
        display.resultado += btn
}

function suma(display, num) {
    display.operador = "+"
    display.valores += display.resultado + " + "
    display.resultado = string((parseInt(num) + parseInt(display.resultado)))
}

function resta(display, num) {
    display.operador = "-"
    display.valores += display.resultado + " - "
    display.resultado = qsTr(parseInt(num) - parseInt(display.resultado))
}

function multiplicacion(display, num) {
    display.operador = "×"
    display.valores += display.resultado + " × "
    display.resultado = qsTr(parseInt(num) * parseInt(display.resultado))
}

function division(display, num) {
    display.operador = "÷"
    display.valores += display.resultado + " ÷ "
    display.resultado = qsTr(parseInt(num) / parseInt(display.resultado))
}

function modulo(display, num) {

}
