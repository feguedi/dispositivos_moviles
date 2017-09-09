public class Score  {

    int v1, v2, x, y;
    color[] c = {color(0, 100, 0), color(100, 0, 0), color(50, 50, 50)};

    public Score (int v1_, int v2_, int x_) {
        this.v1 = v1_;
        this.v2 = v2_;
        this.x = x_;
        y = 60;
    }

    public void update() {
        display();
    }

    private void display() {
        colorMode(RGB, 100);
        if (v1 > v2) { 
            fill(c[0]);
        }
        else if (v1 < v2) {
            fill(c[1]);
        }
        else if (v1 == v2) {
            fill(c[2]);
        }
        textAlign(CENTER);
        textSize(64);
        text(v1, x, y);
    }

    public boolean win() {
        if (v1 == 5) {
            return true;
        }
        else {
            return false;
        }
    }
}