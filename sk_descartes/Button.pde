public class Button {

    PImage img;
    int btnX, btnY;
    boolean hover, pressed;
    color currentColor, btnColor;

    public Button (int x, int y) {
        img = loadImage("img/eraser.png");
        btnColor;
        fill(50);
        rect(x, y, 32, 32);
        btnX = x;
        btnY = y;
        imageMode(CENTER);
        image(img, x + 16, y + 16, 32, 32);        
    }

    public boolean clicked() {
        if(hover) {
            fill(100);
            rect(btnX, btnY, 32, 32);
            return true;
        }
        else {
            return false;
        }
    }

    private void update() {
        if(overBtn(btnX, btnY)) {
            hover = true;
        }
        else {
            hover = false;
        }
    }

    private void overBtn(int x, int y) {
        if(mouseX >= x && mouseX <= x + 32 && mouseY >= y && mouseY <= y + 32) {
            hover = true;
            fill(150);
            rect(btnX, btnY, 32, 32);
        }
    }
}