Button btnPlusA, btnMinusA, btnPlusF, btnMinusF, btnSin, btnCos;
Plane plane;
float s = 0, p = 0, t = 1;
Wave waveS, waveC;

void setup() {
    fullScreen();
    background(150);
    smooth();
    
    plane = new Plane(displayWidth, displayHeight);
    plane.drawPlane();
    plane.addText(s, p, t);
    
    btnPlusA = new Button(displayWidth - 80, displayHeight - 40, 'p');
    btnMinusA = new Button(displayWidth - 40, displayHeight - 40, 'm');
    btnPlusF = new Button(displayWidth - 80, displayHeight - 80, 'p');
    btnMinusF = new Button(displayWidth - 40, displayHeight - 80, 'm');
    btnSin = new Button(displayWidth - 80, displayHeight - 120, 's');
    btnCos = new Button(displayWidth - 40, displayHeight - 120, 'c');
}

void draw() {
    btnPlusA.update();
    btnMinusA.update();
    btnPlusF.update();
    btnMinusF.update();
    btnSin.update();
    btnCos.update();
    
    waveS = new Wave(s, p, t, displayHeight, displayWidth, 's');
    waveC = new Wave(s, p, t, displayHeight, displayWidth, 'c');
    waveC.drawCurve();
    waveS.drawCurve();
    
    p += 0.06;
    s += 2;
    t = TWO_PI / s;
}

void mouseClicked() {
    if (btnPlusA.clicked()) {
        println("Botón 'más amplitud' presionado");
        p += 0.005;
        plane.addText(s, p, t);
        
        waveC.drawCurve();
        waveS.drawCurve();
    } 
    else if (btnMinusA.clicked()) {
        println("Botón 'menos amplitud' presionado");
        p -= 0.005;
        plane.addText(s, p, t);
        
        waveC.drawCurve();
        waveS.drawCurve();
    }
    else if (btnPlusF.clicked()) {
        println("Botón 'más frecuencia' presionado");
        p += 0.005;
        plane.addText(s, p, t);
        
        waveC.drawCurve();
        waveS.drawCurve();
    }
    else if (btnMinusF.clicked()) {
        println("Botón 'menos frecuencia' presionado");
        p -= 0.005;
        plane.addText(s, p, t);
        
        waveC.drawCurve();
        waveS.drawCurve();
    }
    else if (btnSin.clicked()) {
        println("Botón 'seno' presionado");
        background(150);

        plane.drawPlane();
        plane.addText(s, p, t);
        
        p = 0;
        s = 0;
        waveS.v = !(waveS.v);
        waveS.reset();
        waveC.reset();
    }
    else if (btnCos.clicked()) {
        println("Botón 'coseno' presionado");
        background(150);

        plane.drawPlane();
        plane.addText(s, p, t);
        
        p = 0;
        s = 0;
        waveC.v = !(waveC.v);
        waveS.reset();
        waveC.reset();
    }
    else {
        println("No se presionó algún botón");
    }
}