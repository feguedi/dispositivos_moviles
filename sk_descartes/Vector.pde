public class Vector  {

    public float[] coord;

    public Vector (float[] a, float[] b) {
        coord[0] = a[0];
        coord[1] = a[1];
        linea(a[0], a[1], b[0], b[1]);
    }

    public void linea(float i, float j, float k, float l) {
        line(i, j, k, l);
    }

    public void texto(float i, float j, float u) {
        //text();
    }

}