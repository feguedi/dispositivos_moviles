var result, m1 = 0, m2 = 0

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
    display.resultado = string(parseInt(num) - parseInt(display.resultado))
}

function multiplicacion(display, num) {
    display.operador = "×"
    display.valores += display.resultado + " × "
    display.resultado = string(parseInt(num) * parseInt(display.resultado))
}

function division(display, num) {
    display.operador = "÷"
    display.valores += display.resultado + " ÷ "
    display.resultado = string(parseInt(num) / parseInt(display.resultado))
}

function modulo(display, num) {
    result = m1
    var n = 0, n1 = 0, n2 = 0
    try {
        m2 = parseFloat(display.resultado)
        if (m1 < 0 && m1 < m2) {
            n = m1 / m2
            n1 = parseInt(n)
            n2 = n1 * m2
            if (m1 - n2 == 0) result = 0
            else result = m1 - n2 + m2
        } else result = m1 % m2
        display.resultado = result
    } catch (err) {
        console.log(err)
    }
}
