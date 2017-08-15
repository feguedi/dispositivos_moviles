int count = 0;
float[] mt1, mt2, mt3, cc, med1, med2, med3, bc, h1, h2, h3, oc;
float x1, y1, x2, y2, x3, y3, line1, line2, line3, ixe, joel;
float[] display;

/*
 * 
 * mt: mediatriz
 * md: mediana
 * h: altura
 * cc: circuncentro
 * bc: baricentro
 * oc: ortocentro
 * 
 */

void setup() {
    fullScreen();
    display[0] = displayWidth;
    display[1] = displayHeight;
    background(#DBDBDB);
    noStroke();
    smooth();
    text("La línea uno mide ", 100, 50);
    text("La línea dos mide ", 100, 70);
    text("La línea tres mide ", 100, 90);
}

void draw() {
}

void mouseClicked() {
    while (count <= 3) {
        if (count == 0) {
            x1 = mouseX;
            y1 = mouseY;
            count++;
        }
        else if (count == 1) {
            x2 = mouseX;
            y2 = mouseY;
            count++;
        }
        else if (count == 2) {
            x3 = mouseX;
            y3 = mouseY;
            triangle(x1, y1, x2, y2, x3, y3);
            fill(121,, 25, 155);
            line1 = dist(x1, y1, x2, y2);
            line2 = dist(x2, y2, x3, y3);
            line3 = dist(x3, y3, x1, y1);
            fill(0);
            text(line1, 200, 50);
            text(line2, 200, 70);
            text(line3, 200, 90);
            ixe = (line1 + line2 + line3) / 2;
            joel = sqrt(ixe * (ixe - line1) * (ixe - line2) * (ixe - line3));
            text("El área es " + joel, 100, display[0] - 25);
            count++;
        }
        else if (count == 3) {
            noStroke();
            background(#DBDBDB);
            text("La linea uno mide ", 100, 50);
            text("La linea dos mide ", 100, 70);
            text("La linea tres mide  ", 100, 90); 
            x1 = 0;
            y1 = 0;
            x2 = 0;
            y2 = 0;
            x3 = 0;
            y3 = 0;
            i = 0;
        }
    }
}