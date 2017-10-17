.pragma library

var arrX = []
var arrY = []
var x, y, d, aux

function euc(a, b)
{
    if (b === 0) {
        return [1, 0, a]
    }
    else {
        aux = euc(b, a % b)
        x = aux[0]
        y = aux[1]
        d = aux[2]
        arrX.push(x)
        arrY.push(y)

        return [y, x - y * Math.floor(a / b), d, arrX, arrY]
    }
}
