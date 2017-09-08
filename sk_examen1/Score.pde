public class Score  {

    int v1, v2, x, y;
    color[] c;

    public Score (int _v1, int _v2, int _x) {
        this.v1 = _v1;
        this.v2 = _v2;
        this.x = _x;
        y = 45;
        c = {};
    }

    void update() {

    }

    private display() {
        text(v, x, y);
    }

    private int reset() {
        v = 0;
        return v;
    }

    private boolean win() {
        if (v == 5) return true;
    }
}
