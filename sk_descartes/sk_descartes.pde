Button button;
float unidad;
Vector vector1, vector2;
int cont;

void setup() {
    fullScreen();
    cont = 0;
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
            line((displayWidth / 2) - 10, (displayHeight / 2) + (unidad * i),
                 (displayWidth / 2) + 10, (displayHeight / 2) + (unidad * i));
            
        }
    }
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
    
}

void mousePressed() {
    if(button.clicked()) {
        cont = 0;
    }
    
    switch (cont) {
        case 1 :
            //vector1 = new Vector({mouseX, mouseY}, {displayWidth / 2, displayHeight / 2});
            println("cont: " + cont);
            cont++;
        break;
        case 2 :
            //vector2 = new Vector({mouseX, mouseY}, {displayWidth / 2, displayHeight / 2});
            println("cont: " + cont);
            cont = 0;
        break;
    }
}