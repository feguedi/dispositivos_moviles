public class Wave {

    float s, p, t;  // Valores de X y Y
    int w, h;  // Altura y ancho del canvas
    char k;
    public boolean v;

    public Wave (float s, float p, float t, int h, int w, char k) {
        this.s = s;
        this.p = p;
        this.t = t;
        this.w = w;
        this.h = h;
        this.k = k;
        this.v = true;
    }

    public void drawCurve() {
        switch (k) {
            case 's' :
                stroke(204, 102, 0);
                strokeWeight(4);
                if (v) point(s, h / 2 + sin(p) * -100);
            break;
            case 'c' :
                stroke(0,206,209);
                strokeWeight(4);
                if(v) point(s, h / 2 + cos(p) * -100);
            break;	
            default :
            break;	
        }
    }
    
    public void reset() {
        p = 0; 
        s = 0;
        drawCurve();
    }
}
