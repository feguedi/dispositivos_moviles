public class Euler  {


    public Euler (int[] a, int[] b, int[] c) {
        calcularCC(a, b, c);
        
    }

    void trazo(int x, int y) {

    }

    float[] calcularCC(int[] p, int[] q, int[] r) {
        int[][] circuncentro = new int[2][3];
        for (int i = 0; i < 2; i++) {
            circuncentro[i][0] = p[i];
            circuncentro[i][1] = q[i];
            circuncentro[i][2] = r[i];
        }
        // Punto medio línea QR
        float[] mQR = new float[]{(circuncentro[1][0] - circuncentro[2][0]) / 2,
                                  (circuncentro[1][1] - circuncentro[2][1]) / 2,
                                  ((circuncentro[1][0] - circuncentro[2][0]) / (circuncentro[1][1] - circuncentro[2][1]) * -1)};

        float[] mPR = new float[]{(circuncentro[0][0] - circuncentro[2][0]) / 2,
                                  (circuncentro[0][1] - circuncentro[2][1]) / 2,
                                  ((circuncentro[0][0] - circuncentro[2][0]) / (circuncentro[0][1] - circuncentro[2][1]) * -1)};
        return 
    }

    float[] puntoPendiente(float x, float y, float m) {
        
    }

    float[] sistemaEcuaciones(float[] ec1, float[] ec2) {
        
    }

    float[] calcularOC() {
        return 
    }

    float[] calcularBC() {
        return 
    }
    
    void drawLine(float[] h, float[] g, float[] o) {

    }
}

/*
 * 
 * Ortocentro: cruce de las alturas de un triángulo
 * Altura: perpendicular a uno de los lados del triángulo y que termina en el vértice del opuesto
 * Baricentro: cruce de las medianas de un triángulo
 * Mediana: línea que va del punto medio de un lado del triángulo al vértice opuesto
 * Circuncentro: cruce de las mediatrices de un triángulo
 * Mediatriz: línea perpendicular a un lado del triángulo en el punto medio del mismo
 * Fuente - Geometría Euclidiana y Trigonometría; J. Alejandro Pérez y Romero; 
 * 
 */