public class Plane {

    private int w, h;

    public Plane (int w, int h) {
        this.w = w;
        this.h = h;
    }

    public void drawPlane() {
        stroke(0);
        strokeWeight(2);
        line(0, h / 2, w, h / 2);
        strokeWeight(10);
        line(0, 0, 0, h);

        for (int i = 0; i <= 4; ++i) {
            strokeWeight(3);
            line((w / 4) * i, (h / 2) - 10, (w / 4) * i, (h / 2) + 10);
            textSize(30);
            textAlign(CENTER);

            switch (i) {
                case 1 :
                    text("π / 2", (w / 4) * i, (h / 2) + 40);
                break;	
                case 2 :
                    text("π", (w / 4) * i, (h / 2) + 40);
                break;	
                case 3 :
                    text("3π / 2", (w / 4) * i, (h / 2) + 40);
                break;	
                case 4 :
                    textAlign(RIGHT);
                    text("2π", (w / 4) * i, (h / 2) + 40);
                break;	
            }
        }
        // π
    }

    public void addText(float s, float p, float t) {
        smooth();
        textSize(20);
        textAlign(LEFT);
        text("Amplitud: " + p, 20, displayHeight - 60);
        text("Frecuencia: " + s, 20, displayHeight - 40);
        text("Periodo: " + (TWO_PI / t), 20, displayHeight - 20);
    }
}
