public class Vector  {

    float x, y;
    float[] origen;

    public Vector (float[] a, float[] b) {
        this.x = a[0];
        this.y = a[1];
        this.origen[0] = b[0];
        this.origen[1] = b[1];
        linea(a[0], a[1], b[0], b[1]);
        texto("(" + this.x + ", " + this.y + ")", b[0], b[1]);
    }

    public void linea(float i, float j, float k, float l) {
        smooth(2);
        line(i, j, k, l);
    }

    public void texto(float i, float j) {
        text("(" + i + ", " + j + ")", i, j);
    }

    public float magnitud() {
        return sqrt(exp(this.origen[0] - this.x) + exp(this.origen[1] - this.y));
    }

}