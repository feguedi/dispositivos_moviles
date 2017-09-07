float unidadX, unidadY;

void setup() {
    fullScreen();
    strokeWeight(4);
    stroke(255, 102, 0);
    // curve(v1[0][0], v1[0][1], 5, 26, 73, 24, 73, 61);
    // curve(73, 24, 73, 61, 15, 65, 15, 65);
    // translate(0, height / 2);

    int[] c1c1 = {width / 4, 0};
    int[] c1c2 = {width / 4, height};
    int[] c2c1 = {(width / 4) * 3, 0};
    int[] c2c2 = {(width / 4) * 3, height};

    ellipse(c1c1[0], c1c1[1], 3, 3);
    ellipse(c1c2[0], c1c2[1], 3, 3);
    bezier(0, height / 2,
           c1c1[0], c1c1[1],
           c1c2[0], c1c2[1],
           width / 2, height / 2);

    ellipse(c2c1[0], c2c1[1], 3, 3);
    ellipse(c2c2[0], c2c2[1], 3, 3);
    bezier(width / 2, height / 2,
           c2c1[0], c2c1[1],
           c2c2[0], c2c2[1],
           width, height / 2);

    stroke(0);
    strokeWeight(2);
    line(0, height / 2, width, height / 2);
    strokeWeight(10);
    line(0, 0, 0, height);

    for (int i = 0; i <= 4; ++i) {
        strokeWeight(3);
        line((width / 4) * i, (height / 2) - 10, (width / 4) * i, (height / 2) + 10);
        textSize(30);
        textAlign(CENTER);

        switch (i) {
            case 1:
                text("π / 2", (width / 4) * i, (height / 2) + 40);
                break;
            case 2:
                text("π", (width / 4) * i, (height / 2) + 40);
                break;
            case 3:
                text("3π / 2", (width / 4) * i, (height / 2) + 40);
                break;
            case 4:
                textAlign(RIGHT);
                text("2π", (width / 4) * i, (height / 2) + 40);
                break;
        }
    }

    

}

void draw() {

}