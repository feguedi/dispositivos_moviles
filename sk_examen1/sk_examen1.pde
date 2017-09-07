Board board;

void setup() {
    fullScreen();
    board = new Board(width, height);
}

void draw() {
    board.update();
}
