public class Button {

    PImage img;
    img = loadImage("img/eraser.png");
    int btnX, btnY;
    boolean hover;
    color currentColor, btnColor;

    public Button (int x, int y) {
        fill();
        rect(this.x, this.y, 32, 32);
        btnX = this.x;
        btnY = this.y;
        imageMode(CENTER);
        image(img, this.x + 16, this.y + 16, 32, 32);        
    }

    public void clicked() {
        if(overBtn) {
            currentColor = btnColor;
        }
    }

    private void update() {
        if(overBtn(btnX, btnY)) {

        }
    }

    private boolean overBtn(int x, int y) {
        if(mouseX >= this.x && mouseX <= this.x + 32 && mouseY >= this.y && mouseY <= this.y + 32) {
            return true;
        }
        else {
            return false;
        }
    }
}
