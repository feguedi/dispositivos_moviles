Button button;
float unidad;
float[] origen;
Vector vector1, vector2;
int cont;

void setup() {
    fullScreen();
    cont = 0;
    origen = new float[]{displayWidth / 2, displayHeight / 2};
    background(#DBDBDB);
    button = new Button(displayWidth - 40, displayHeight - 40);
    unidad = displayWidth / 60;
    println("unidad: " + unidad);
    stroke(0);
    line(displayWidth / 2, 0, displayWidth / 2, displayHeight);
    stroke(0);
    line(0, displayHeight / 2, displayWidth, displayHeight / 2);

    for (int i = 0; i < ((displayHeight / unidad) / 2); ++i) {
        if(i != 0) {
            if(i % 10 == 0) {
                strokeWeight(4);
            }
            else {
                strokeWeight(1);
            }
            line((displayWidth / 2) - 10, (displayHeight / 2) - (unidad * i),
                 (displayWidth / 2) + 10, (displayHeight / 2) - (unidad * i));
            line((displayWidth / 2) - 10, (displayHeight / 2) + (unidad * i),
                 (displayWidth / 2) + 10, (displayHeight / 2) + (unidad * i));
        }
    }

    for (int i = 0; i < ((displayWidth / unidad) / 2); ++i) {
        if(i != 0) {
            if(i % 10 == 0) {
                strokeWeight(4);
            }
            else {
                strokeWeight(1);
            }
            line((displayWidth / 2) + (unidad * i), (displayHeight / 2) - 10,
                 (displayWidth / 2) + (unidad * i), (displayHeight / 2) + 10);
            line((displayWidth / 2) - (unidad * i), (displayHeight / 2) - 10,
                 (displayWidth / 2) - (unidad * i), (displayHeight / 2) + 10);
        }
    }

    textSize(32);
    text("+", (displayWidth / 2) + 10, 32);
    text("-", 0, (displayHeight / 2) + 32);
    text("+", displayWidth - 32, (displayHeight / 2) + 32);
    text("-", (displayWidth / 2) + 32, displayHeight - 32);
}

void draw() {
    button.update();
}

void mousePressed() {
    float[] coord = {mouseX, mouseY};
    
    if(button.clicked()) {
        cont = 0;
        noStroke();
    }
    
    switch (cont) {
        case 0 :
            vector1 = new Vector(coord, origen);
            println("cont: " + cont);
            cont++;
        break;
        case 1 :
            vector2 = new Vector(coord, origen);
            println("cont: " + cont);
            angulo(vector1, vector2);
            cont++;
        break;
    }
}

public void angulo(Vector a, Vector b) {
    float radio = min(a.magnitud() / 3, b.magnitud() / 3);
    float p1 = radians(a.y / a.x);
    float p2 = radians(b.y / b.x);

    noFill();
    if (p1 < p2) {
        arc(origen[0], origen[1], radio, radio, p2, p1);
        text("El ángulo es de " + (p2 - p1), b.x + a.x, b.y + a.y);
    }
    else {
        arc(origen[0], origen[1], radio, radio, p1, p2);
        text("El ángulo es de " + (p1 - p2), b.x + a.x, b.y + a.y);
    }
}