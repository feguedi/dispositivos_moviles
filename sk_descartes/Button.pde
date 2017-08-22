public class Button {

    PImage img;
    int btnX, btnY;
    boolean hover, pressed;
    color currentColor, btnColor;

    public Button (int x, int y) {
        img = loadImage("img/eraser.png");
        fill(50);
        rect(x, y, 32, 32);
        btnX = x;
        btnY = y;
        imageMode(CENTER);
        image(img, x + 16, y + 16, 32, 32);        
    }

    public boolean clicked() {
        if(hover) {
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
    }

    private boolean overBtn(int x, int y) {
        if(mouseX >= x && mouseX <= x + 32 && mouseY >= y && mouseY <= y + 32) {
            return true;
        }
        else {
            return false;
        }
    }
}