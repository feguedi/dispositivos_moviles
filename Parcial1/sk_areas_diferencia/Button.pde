public class Button  {

    boolean cont = false;
    private PImage img;
    public int btnX, btnY;
    public boolean hover = false;
    private color highlightColor = color(51);
    private color baseColor = color(102);
    private color currentButtonColor = color(0);
    
    public Button (int x, int y) {
        rectMode(CENTER);
        fill(255);
        rect(x, y, 36, 36);
        img = loadImage("img/mirror.png");
        imageMode(CENTER);
        image(img, x, y);
    }

    public void clicked() {
        if (hover) {
            // Código para cambiar el color del botón
        }
        if (cont) {
            // Código para cambiar la perspectiva
            cont = false;
        }
        else {
            // Código para regresar la perspectiva
            cont = true;
        }
        
    }

    public void update(int x, int y) {
        if (over(btnX, btnY)) {
            hover = true;
        }
        else {
            hover = false;
        }

    }

    private boolean over(int x, int y) {
        if (mouseX >= x && mouseX <= x + 32 &&
            mouseY >= y && mouseY <= y + 32) {
            return true;
        }
        else {
            return false;
        }
    }

}