public class Wave {

    float s, p;  // Valores de X y Y
    int w, h;  // Altura y ancho del canvas
    char t;
    public boolean v;

    public Wave (float s, float p, int h, int w, char t) {
        this.s = s;
        this.p = p;
        this.w = w;
        this.h = h;
        this.t = t;
        this.v = true;
    }

    public void drawCurve() {
        switch (t) {
            case 's' :
                stroke(204, 102, 0);
                strokeWeight(4);
                if (v) point(s, h / 2 + sin(p) * 100);
            break;
            case 'c' :
                stroke(0,206,209);
                strokeWeight(4);
                if(v) point(s, h / 2 + cos(p) * 100);
            break;	
            default :
            break;	
        }
    }
    
    public void reset() {
        p = 0; 
        s = 0;
    }
}
