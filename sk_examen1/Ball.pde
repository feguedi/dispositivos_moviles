public class Ball  {

    int  x, y, w, h;
    float xSpeed = 5, ySpeed = 5;
    
    public Ball (int _x, int _y, int _w, int _h) {
        this.x = _x;
        this.y = _y;
        this.w = _w;
        this.h = _h;
    }

    void drawBall() {
        x += xSpeed;
        if (x >= w || x <= 0) {
            xSpeed *= -1;
        }
        
        y += ySpeed;
        if (y >= h || y <= 0) {
            ySpeed *= -1;
        }

        ellipse(x, y, w, h);
    }

    void collision() {
        
    }

}
