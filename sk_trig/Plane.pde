public class Plane {

    private int w, h;

    public Plane (int w, int h) {
        this.w = w;
        this.h = h;
        drawPlane();
    }

    public void drawPlane() {
        stroke(0);
        strokeWeight(2);
        line(0, h / 2, w, h / 2);
        strokeWeight(6);
        line(0, 0, 0, h);

        for (int i = 1; i < 4; ++i) {
            strokeWeight(3);
            line((w / 4) * i, (h / 2) - 10, (w / 4) * i, (h / 2) + 10);
        }
    }
}
