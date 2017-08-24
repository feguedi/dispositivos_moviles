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
            vector1.linea(origen[0], origen[1], coord[0], coord[1]);
            println("cont: " + cont);
            cont++;
        break;
        case 1 :
            vector2 = new Vector(coord, origen);
            vector2.linea(origen[0], origen[1], coord[0], coord[1]);
            println("cont: " + cont);
            angulo(vector1.coord, vector2.coord);
            cont++;
        break;	
    }
}

public void angulo(float[] a, float[] b) {
    float[] p1 = new float[2];
    float[] p2 = new float[2];
    p1[0] = (origen[0] + a[0]) / 3;
    p1[1] = (origen[1] + a[1]) / 3;
    p2[0] = (origen[0] + b[0]) / 3;
    p2[1] = (origen[2] + b[1]) / 3;

    float radio = min(sqrt(exp(origen[0] - p1[0]) + exp(origen[1] - p1[1])),
                      sqrt(exp(origen[0] - p2[0]) + exp(origen[1] - p2[1])));

    //arc(origen[0], origen[1], radio, radio, );
    noFill();
}