Button plusA, minusA, plusF, minusF, btnSin, btnCos;
Plane plane;
float s = 0, p = 0;
Wave waveS, waveC;

void setup() {
    fullScreen();
    background(150);
    smooth();
    plane = new Plane(displayWidth, displayHeight);
    plane.drawPlane();
    plane.addText(s, p);
    plusA = new Button(displayWidth - 80, displayHeight - 40, 'p');
    minusA = new Button(displayWidth - 40, displayHeight - 40, 'm');
    plusF = new Button(displayWidth - 80, displayHeight - 80, 'p');
    minusF = new Button(displayWidth - 40, displayHeight - 80, 'm');
    btnSin = new Button(displayWidth - 80, displayHeight - 120, 's');
    btnCos = new Button(displayWidth - 40, displayHeight - 120, 'c');
}

void draw() {
    plusA.update();
    minusA.update();
    plusF.update();
    minusF.update();
    btnSin.update();
    btnCos.update();
    waveS = new Wave(s, p, displayHeight, displayWidth, 's');
    waveC = new Wave(s, p, displayHeight, displayWidth, 'c');
    waveC.drawCurve();
    waveS.drawCurve();
    p += 0.055;
    s += 3;
}

void mouseClicked() {
    if (plusA.clicked()) {
        println("Botón 'más' presionado");
        p += 0.005;
        plane.addText(s, p);
        waveC.drawCurve();
        waveS.drawCurve();
    } 
    else if (minusA.clicked()) {
        println("Botón 'menos' presionado");
        p -= 0.005;
        plane.addText(s, p);
        waveC.drawCurve();
        waveS.drawCurve();
    }
    else if (plusF.clicked()) {
        println("Botón 'más' presionado");
        p += 0.005;
        plane.addText(s, p);
        waveC.drawCurve();
        waveS.drawCurve();
    }
    else if (minusF.clicked()) {
        println("Botón 'menos' presionado");
        p -= 0.005;
        plane.addText(s, p);
        waveC.drawCurve();
        waveS.drawCurve();
    }
    else if (btnSin.clicked()) {
        println("Botón 'seno' presionado");
        background(150);
        plane.drawPlane();
        plane.addText(s, p);
        waveS.reset();
        waveC.reset();
        // waveS.v = !waveS.v;
        waveS.drawCurve();
        waveC.drawCurve();
    }
    else if (btnCos.clicked()) {
        println("Botón 'coseno' presionado");
        background(150);
        plane.drawPlane();
        plane.addText(s, p);
        waveS.reset();
        waveC.reset();
        // waveC.v = !waveC.v;
        waveS.drawCurve();
        waveC.drawCurve();
    }
    else {
        println("No se presionó algún botón");
    }
}