public class Vector  {

    float x, y;
    float[] origen = new float[2];
    float u;

    public Vector (float[] a, float[] b, float u) {
        this.u = u;
        // origen[1] = 2.6;
        origen[0] = b[0];
        origen[1] = b[1];
        this.x = (a[0] - origen[0]) / u;
        this.y = (origen[1] - a[1]) / u;
        println("a: " + a[0] + ", " + a[1]);
        linea(a[0], a[1], b[0], b[1]);
        textSize(24);
        text("(" + this.x + ", " + this.y + ")", a[0], a[1]);
    }

    public void linea(float i, float j, float k, float l) {
        strokeWeight(3);
        line(i, j, k, l);
    }

    /*public void texto(float i, float j) {
        text("(" + i + ", " + j + ")", i, j);
    }*/

    public float magnitud() {
        println("this.x: " + this.x);
        println("this.y: " + this.y);
        return sqrt(sq(this.x) + sq(this.y));
    }

}