Button button;
float unidad;
float[] origen = new float[2];
Vector vector1, vector2;
int cont;

void setup() {
    fullScreen();
    cont = 0;
    origen[0] = displayWidth / 2;
    origen[1] = displayHeight / 2;
    unidad = displayWidth / 60;
    smooth(2);
    plano();
}

void draw() {
    button.update();
}

void mouseClicked() {
    float[] coord = {mouseX, mouseY};

    switch (cont) {
        case 0 :
            vector1 = new Vector(coord, origen, unidad);
            println("cont: " + cont);
            cont++;
        break;
        case 1 :
            vector2 = new Vector(coord, origen, unidad);
            println("cont: " + cont);
            angulo(new float[]{vector1.magnitud(), vector1.x, vector1.y},
                   new float[]{vector2.magnitud(), vector2.x, vector2.y});
            println("vector1.magnitud(): " + vector1.magnitud());
            println("vector2.magnitud(): " + vector2.magnitud());
            cont++;
        break;
    }

    if(button.clicked()) {
        cont = 0;
        background(0, 0);
        plano();
    }
}

public void angulo(float[] a, float[] b) {
    float radio = min(a[0] / 3, b[0] / 3); //<>//
    float p1 = atan(a[2] / a[1]); //<>//
    float p2 = atan(b[2] / b[1]); //<>//
    println("p1: " + p1);
    println("p2: " + p2);

    noFill();
    stroke(2);
    if (p1 < p2) {
        arc(origen[0], origen[1], radio, radio, p2, p1);
        textSize(24);
        text("El ángulo es de " + (degrees(p2) - degrees(p1)), b[1] + a[1], b[2] + a[2]);
        println("El ángulo es de: " + (degrees(p2) - degrees(p1)));
    }
    else {
        arc(origen[0], origen[1], radio, radio, p1, p2);
        textSize(24);
        text("El ángulo es de " + (degrees(p1) - degrees(p2)), 10, displayHeight - 40);
        println("El ángulo es de: " + degrees(p1 - p2));
    }
}

public void plano() {
    background(#DBDBDB);
    button = new Button(displayWidth - 40, displayHeight - 40);
    println("unidad: " + unidad);
    strokeWeight(1);
    stroke(0);
    line(origen[0], 0, origen[0], displayHeight);
    stroke(0);
    line(0, origen[1], displayWidth, origen[1]);

    for (int i = 0; i < ((displayHeight / unidad) / 2); ++i) {
        if(i != 0) {
            if(i == 10 || i == 20 || i == 30 || i == 40) {
                strokeWeight(5);                
            }
            else if(i % 5 == 0) {
                strokeWeight(2);
            }
            else {
                strokeWeight(1);
            }
        }
        line(origen[0] - 10, origen[1] - (unidad * i),
             origen[0] + 10, origen[1] - (unidad * i));
        line(origen[0] - 10, origen[1] + (unidad * i),
             origen[0] + 10, origen[1] + (unidad * i));
        line(origen[0] + (unidad * i), origen[1] - 10,
             origen[0] + (unidad * i), origen[1] + 10);
        line(origen[0] - (unidad * i), origen[1] - 10,
             origen[0] - (unidad * i), origen[1] + 10);
    }

    textSize(32);
    text("+", origen[0] + 10, 32);
    text("-", 0, origen[1] + 32);
    text("+", displayWidth - 32, origen[1] + 32);
    text("-", origen[0] + 32, displayHeight - 32);
}