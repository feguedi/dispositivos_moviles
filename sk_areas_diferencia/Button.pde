public class Button  {

    boolean cont = false;
    PImage img;
    img = loadImage("img/mirror.png");
    

    public Button (int x, int y) {
        rect(x, y, 32, 32);
        imageMode(CENTER);
        image(img, 0, 0, 32, 32);
    }

    private boolean clicked() {
        switch (cont) {
            case false :

                cont = true;
                return true;
            break;
            case true :

                cont = false;
                return true;
            break;
            default :    
            break;	
        }
    }


}
