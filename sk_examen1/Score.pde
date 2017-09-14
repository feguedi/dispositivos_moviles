public class Score  {

    int v1, v2, x, y;
    color[] c = {color(0, 100, 0), color(100, 0, 0), color(50, 50, 50)};

    public Score (int v1_, int v2_, int x_) {
        this.v1 = v1_; 
        this.v2 = v2_; 
        this.x = x_;
        y = 60;
    }

    void display(int p, int o) {
        v1 = p;
        v2 = o;
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
        text(Integer.toString(p), x, y);
    }

    boolean win() {
        if (v1 == 5) {
            return true;
        }
        else {
            return false;
        }
    }
}