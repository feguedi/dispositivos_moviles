public class Bar {

    int x, y, h;

    public Bar(int _h, int _x) {
        this.h = _h;
        this.x = _x;
    }

    void drawBar() {
        constrain(h, 40, h - 40);
    }

}
