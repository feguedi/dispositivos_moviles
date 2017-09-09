public class Board {

    int w, h, s1, s2;
    Player player1, player2;
    Score score1, score2;
    Ai ai;
    Ball ball;
    boolean b = false;  // Cambiar este valor para habilitar al segundo jugador(derecha)

    public Board(int w, int h) {
        this.w = w;
        this.h = h;
        s1 = 0;
        s2 = 0; 
        background(#1e1e1e);
        player1 = new Player(1, h, (int) w / 5);
        if (b == false) {
            ai = new Ai(h, (int) (w / 5) * 4);
            ball = new Ball(w / 2, h / 2, w, h,
                            new int[]{player1.x, player1.y, (1920 / w) * 30, player1.hB},
                            new int[]{ai.x, ai.y, (1920 / w) * 30, ai.hB});
        }
        else {
            player2 = new Player(2, h, ((int) w / 5) * 4);
            ball = new Ball(w / 2, h / 2, w, h,
                            new int[]{player1.x, player1.y, (1920 / w) * 30, player1.hB},
                            new int[]{player2.x, player2.y, (1920 / w) * 30, ai.hB});
        }
        score1 = new Score(s1, s2, w / 4);
        score2 = new Score(s2, s1, (int) (w / 4) * 3);
    }

    void update(){
        background(#1e1e1e);
        display();
        score1.update();
        score2.update();
        if (score1.win() || score2.win()) gameOver();
    }

    void display() {
        fill(255, 255, 255);
        rectMode(CENTER);
        for (int i = 0; i < (h / 30); ++i) {
            rect(w / 2, i + 30, 10, 30);
        }
        ball.display();
        if (b == false) {
            player1.display();
            ai.display();
        }
        else {
            player1.display();
            player2.display();
        }
        score();
    }

    void score() {
        if (ball.x == 15) {
            s2++;
            score1.update();
            score2.update();
            println("Punto para P2");
        }
        if (ball.x == (w - 15)) {
            s1++;
            score1.update();
            score2.update();
            println("Punto para P1");
        }
    }

    void resetScore() {
        s1 = 0;
        s2 = 0;
    }

    
    void gameOver() {
        ball.gameOver(true);

    }

}