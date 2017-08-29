public class Wave {

    float s, p;  // Valores de X y Y
    int w, h;  // Altura y ancho del canvas

    public Wave (float s, float p, int h, int w) {
        this.s = s;
        this.p = p;
        this.w = w;
        this.h = h;
        drawPoint();
    }

    void drawPoint() {
        point(s, h / 2 + sin(p) * 100);
        
    }

}
