public class Button {

    PImage img;
    int btnX, btnY;
    boolean hover;
    color currentColor, btnColor;
    char k;

    public Button (int x, int y, char k) {
        if (t == 's') {
            btnColor = color(204, 102, 0);
        }
        else if (t == 'c') {
            btnColor = color(0,206,209);
        }
        else {
            btnColor = 200;
        }
        this.btnX = x;
        this.btnY = y;
        this.k = k;
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
        switch (k) {
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
        if(overBtn(btnX, btnY)) {
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
            addText();
        }
        else {
            if (k == 's') {
                btnColor = color(204, 102, 0);
            }
            else if (k == 'c') {
                btnColor = color(0,206,209);
            }
            else {
                btnColor = 200;
            }
            setButton();
            addText();
        }
    }

    private boolean overBtn(int x, int y) {
        if(mouseX >= x && mouseX <= x + 32 && mouseY >= y && mouseY <= y + 32) {
            setButton();
            return true;
        }
        else {
            setButton();
            return false; 
        }
    }

    private void addText() {
        smooth();
        textAlign(RIGHT);
        textSize(20);
        fill(255);
        text("Amplitud:", displayWidth - 120, displayHeight - 20);
        textAlign(RIGHT);
        textSize(20);
        text("Frecuencia:", displayWidth - 120, displayHeight - 60);
    }
}