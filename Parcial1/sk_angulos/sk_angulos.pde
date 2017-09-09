Button button;

void setup() {
    fullScreen();
    background(grey);
    button = new Button(displayWidth - 42, displayHeight - 42);

}

void draw() {

}

void mousePressed() {
    button.clicked();
    
}