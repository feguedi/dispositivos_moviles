public class Bar {

    int x, y;
    int hS, hB;

    public Bar(int h_, int x_) {
        this.hS = h_ / 3;
        this.x = x_;
        y = hS / 2;
        hB = hS / 3;
    }

    void bar() {
        fill(150, 150, 150);
        rectMode(CENTER);
        rect(x, y, (1920 / width) * 30, hB);
    }

    void display() {
        bar();
        noStroke();
        move();
    }

    void move() {
        y = constrain(y, 15, hS - 15);
    }

    void collision () {
        // Colores y lugar donde golpeó la bola
    }

}