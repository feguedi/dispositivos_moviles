public class Player extends Bar {

    int p;

    public Player (int p_, int h_, int x_) {
        super(h_, x_);
        this.p = p_;
        println("P" + p + ": " + hB + ", " + hS);
      }

    void move() {
        if (keyPressed) {
            switch (p) {
                case 1 :
                    switch (key) {
                        case 'O' :
                        case 'o' :
                            y += 3;
                        break;
                        case 'L' :
                        case 'l' :
                            y -= 3;
                        break;
                    }
                break;
                case 2 :    
                    switch (key) {
                        case 'W' :
                        case 'w' :
                            y += 3;
                        break;
                        case 'S' :
                        case 's' :
                            y -= 3;
                        break;
                    }
                break;
            }
        }
        super.move();
    }

    void display() {
        super.display();
    }

}