.pragma library

function numeros(btn, display) {
    console.log("Se presionó la tecla " + btn)
    if (btn === ".") {
        if (display.resultado.length > 0){
            var chck = false
            for(var i in display.resultado) {
                console.log("Entraré a revisar")
                if (display.resultado.charAt(i) != ".") {
                    console.log("Revisando " + display.resultado.charAt(i))
                    if (i == display.resultado.length - 1 && chck == false) display.resultado += btn
                } else { chck = true; console.log("Encontré un punto") }
            }
        } else display.resultado = "0."
    } else if(btn == "0") {
        if (display.resultado.length > 0) {
            display.resultado += btn
        }
    } else display.resultado += btn
}

function suma(display, array) {
    display.operador = "+"
    display.valores += display.resultado + " + "
    array.push(display.valores)
    display.resultado = string(parseInt(array.length) + parseInt(display.resultado))
}

function resta() {

}

function multiplicacion() {

}

function division() {

}

function chino() {

}

function euclides() {

}

function cubo() {

}

function cuadrado() {

}

function raiz() {

}
