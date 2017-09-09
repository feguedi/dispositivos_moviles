public class Ai extends Bar {

    int y;
    float t = 0.0, a = 75.0;

    public Ai (int h_, int x_) {
        super(h_, x_);
        y = 0;
    }

    void display() {
        t += 0.02;
        y += (sin(t) * a);
        super.display();
    }

    void bar() {
        super.bar();
    }

    void gameOver() {
        // Detener la barra
        
    }

}
