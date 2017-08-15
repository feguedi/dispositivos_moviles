int i = 0;
float x1,y1,x2,y2,x3,y3,linea1,linea2,linea3,ixe,joel;
void setup () {
  background(51);
  size (600,600);
  noStroke();
  smooth();
    text("La linea uno mide ", 100,50);
    text("La linea dos mide " , 100,70);
    text("La linea 3 mide  " , 100,90); 
}
void draw(){
}

void mousePressed() {
  if(i==0) {
    x1 = mouseX;
    y1 = mouseY;
    i++; 
  }else if (i==1){
    x2 = mouseX;
    y2 = mouseY;
    i++; 
  }else if (i==2){
    x3 = mouseX;
    y3 = mouseY;
    triangle(x1,y1,x2,y2,x3,y3);
    fill(121,25,155);
    linea1 = dist(x1,y1,x2,y2);
    linea2 = dist(x2,y2,x3,y3);
    linea3 = dist(x3,y3,x1,y1);
    fill(0);
    text(linea1, 200,50);
    text(linea2, 200,70);
    text(linea3, 200,90);         
  ixe = (linea1 + linea2 + linea3) / 2;
  joel = sqrt(ixe*(ixe-linea1)*(ixe-linea2)*(ixe-linea3));
    text("El área es: " + joel, 200, 160);
    i++;
  }else if (i==3){
    noStroke();
    background(51);
    text("La linea uno mide ", 100,50);
    text("La linea dos mide " , 100,70);
    text("La linea 3 mide  " , 100,90); 
    x1=0;
    y1=0;
    x2=0;
    y2=0;
    x3=0;
    y3=0;
    i=0; 
  }
}