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
        setButton();
    }

    private void setButton() {
        fill(btnColor);
        strokeWeight(0);
        rect(btnX, btnY, 32, 32);
        setImage();
        addText();
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
            btnColor = 50;
            setButton();
            return true;
        }
        else {
            btnColor = 200;
            setButton();
            return false;
        }
    }

    public void update() {
        if(overBtn(btnX, btnY)) {
            btnColor = 100;
            setButton();
        }
        else {
            btnColor = 200;
            setButton();
        }
    }

    private boolean overBtn(int x, int y) {
        if(mouseX >= x && mouseX <= x + 32 && mouseY >= y && mouseY <= y + 32) {
            hover = true;
            setButton();
            return true;
        }
        else {
            hover = false;
            setButton();
            return false; 
        }
    }

    private void addText() {
        textAlign(RIGHT);
        textSize(20);
        text('Amplitud:', displayWidth - 120, displayHeight - 40);
        textAlign(RIGHT);
        textSize(20);
        text('Frecuencia:', displayWidth - 120, displayHeight - 80);
    }
}