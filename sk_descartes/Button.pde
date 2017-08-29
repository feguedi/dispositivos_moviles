public class Button {

    PImage img;
    int btnX, btnY;
    boolean hover;
    color currentColor, btnColor;

    public Button (int x, int y) {
        img = loadImage("img/eraser.png");
        btnColor = 50;
        this.btnX = x;
        this.btnY = y;
        fill(btnColor);
        rect(btnX, btnY, 32, 32);
        imageMode(CENTER);
        image(img, btnX + 16, btnY + 16, 32, 32);        
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
            btnColor = 100;
        }
        else {
            btnColor = 50;
        }
    }

    private boolean overBtn(int x, int y) {
        if(mouseX >= x && mouseX <= x + 32 && mouseY >= y && mouseY <= y + 32) {
            hover = true;
            fill(btnColor);
            rect(btnX, btnY, 32, 32);
            imageMode(CENTER);
            image(img, btnX + 16, btnY + 16, 32, 32);
            return true;
        }
        else {
            return false; 
        }
    }
}