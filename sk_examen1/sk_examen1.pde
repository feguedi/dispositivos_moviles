/**
 *  Examen 1: Se creará el juego "Pong". El jugador tiene que mover su barra usando el mouse o el teclado. La aplicación debe tener su propia barra usando ondas armónicas para moverla. El juego debe indicar el marcador. El jugador que llegue a 5 puntos gana.
 *
 *	@author Ixe Fernández Gudiño
 *	@since  Jueves 7 de septiembre de 2017
 *  @version 0.0.1 9/7/17
 */

Board board;

void setup() {
    fullScreen();
    board = new Board(width, height);
}

void draw() {
    board.update();
}
