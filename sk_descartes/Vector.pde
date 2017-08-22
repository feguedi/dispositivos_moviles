public class Vector  {

    public Vector (int[] a, int[] b) {
        linea(a[0], a[1], b[0], b[1]);
    }

    public void linea(int i, int j, int k, int l) {
        line(i, j, k, l);
    }

    public void angulo(int[] a, int[] b) {
        float pX1 = (a[0] + a[2]) / 3;
        float pY1 = (a[1] + a[3]) / 3;
        float pX2 = (b[0] + b[1]) / 3;
        float pY2 = (b[2] + b[3]) / 3;
        arc();
    }

}