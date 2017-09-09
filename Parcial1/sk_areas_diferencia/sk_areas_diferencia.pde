Button button;

void setup() {
    fullScreen();
    button = new Button(displayWidth - 40, displayHeight - 40);
    button.btnX = displayWidth - 40;
    button.btnY = displayHeight - 40;
}

void draw() {
    button.update(mouseX, mouseY);
    if (button.hover) {
        
    }
}

void mousePressed() {
    button.clicked();
}