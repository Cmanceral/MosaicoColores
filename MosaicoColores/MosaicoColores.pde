void setup(){
  size(600,600);
}

void draw(){
  int nCells = 100;
  int cellSize = width/nCells;
  int x, y;
  
  noStroke();
  for(int i = 0; i < nCells; i++){
    for(int j = 0; j < nCells; j++){
      x = cellSize * i;
      y = cellSize * j;
      float needle = random(1.0);
      if (needle < 0.6){
        fill(57, 125, 183);
      } else if( needle < 0.8){
        fill(237, 203, 91);
      } else if( needle < 0.9){
        fill(151, 193, 88);
      } else {
        fill(115, 211, 209);
      }
      rect( x, y, cellSize, cellSize);
    }
  }
  noLoop();
}

void mousePressed(){
  loop();
} 

void mouseReleased(){
  noLoop();
}
