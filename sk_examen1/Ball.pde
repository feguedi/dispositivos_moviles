public class Ball  {

    public int  x, y;
    private int w, h, r;
    int[] p1, p2;
    float xSpeed = 5, ySpeed = 5;
    
    public Ball (int x_, int y_, int w_, int h_, int[] p1_, int[] p2_) {
        this.x = x_;
        this.y = y_;
        this.w = w_;
        this.h = h_;
        this.p1 = p1_;
        this.p2 = p2_;
        r = 15;
    }

    void display() {
        ball(); 
        fill(150, 150, 150);
        move(); 
    }

    private void ball() {
        noStroke();
        ellipseMode(CENTER);
        ellipse(x, y, r * 2, r * 2); 
    }

    private void move() {
        x += xSpeed; 
        if (x + r >= w || x - r <= 0) {
            xSpeed *= -1;
        }
        
        y += ySpeed; 
        if ((y + r) >= h
         || (y - r) <= 0
         || y == p1[2] + 15) {
            ySpeed *= -1;
        }
    }

    public boolean gameOver(boolean g) {
        if (g) {
            x = w / 2;
            y = y / 2;
            ball();
            return true;
        }
        else {
            return false;
        }
    }

}