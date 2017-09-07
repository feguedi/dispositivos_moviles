public class Board {

    int w, h;
    User user1, user2;
    Score score1, score2;
    Ai ai;
    Ball ball;
    boolean b = false;

    public Board(int w, int h) {
        this.w = w;
        this.h = h;
        if (!b) {
            user1 = new User();
            ai = new Ai();
        }
        else {
            user1 = new User();
            user2 = new User();
        }
    }

    void update(){

    }

    void bg() {
        background(grey);
    }

}
