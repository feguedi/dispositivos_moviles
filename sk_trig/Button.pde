public class Button {

    PImage img;
    int btnX, btnY;
    boolean hover;
    color currentColor, btnColor;
    char t;

    public Button (int x, int y, char t) {
        btnColor = 200;
        this.btnX = x;
        this.btnY = y;
        this.t = t;
        fill(btnColor);
        strokeWeight(0);
        rect(btnX, btnY, 32, 32);
        setImage();
    }

    private void setImage() {
        switch (t) {
            case 'p' :
                img = loadImage("img/plus.png");
            break;
            case 'm' :
                img = loadImage("img/minus.png");
            break;	
            case 's' :
                img = loadImage("img/sin.png");
            break;	
            case 'c' :
                img = loadImage("img/cos.png");
            break;	
            default :
            break;	
        }
        imageMode(CENTER);
        image(img, btnX + 16, btnY + 16, 28, 28);
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

    public void update() {
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
            setImage();
            return true;
        }
        else {
            return false; 
        }
    }
}