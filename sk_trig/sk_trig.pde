Button plus, minus, btnSen, btnCos;
Plane plane;
float s, p;
Wave wave;

void setup() {
    fullScreen();
    background(150);
}

void draw() {
    p += 0.055;
    s += 3;
    plane = new Plane(displayWidth, displayHeight);
    plus = new Button(displayWidth - 80, displayHeight - 40, 'p');
    minus = new Button(displayWidth - 40, displayHeight - 40, 'm');
    btnSen = new Button(displayWidth - 80, displayHeight - 80, 's');
    btnCos = new Button(displayWidth - 40, displayHeight - 80, 'c');
    wave = new Wave(s, p, displayHeight, displayWidth);
    text("Amplitud: " + p, 20, displayHeight - 60);
    text("Rango: " + s, 20, displayHeight - 40);
    text("Periodo: ", 20, displayHeight - 20);
    plus.update();
    minus.update();
    btnSen.update();
    btnCos.update();
}

void mouseClicked() {
    if (plus.clicked()) {
        println("Boton más presionado");
    }
    else if (minus.clicked()) {
        println("Boton menos presionado");
    }
    else if (btnSen.clicked()) {
        println("Boton seno presionado");
    }
    else if (btnCos.clicked()) {
        println("Boton coseno presionado");
    }
    else {
        println("No se presionó algún botón");
    }
}