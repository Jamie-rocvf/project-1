void setup(){
  size(500,250);
  background(0,0,255);
  tekenBoom(240, 70, 20, 150, 250, 100);
}

void tekenBoom(int x, int y, int RB, int RL, int x2, int E){
  fill(90, 40, 10);
  rect(x, y, RB, RL);
  fill(0, 255, 0);
  ellipse(x2, y, E, E);
  fill(0,255,0);
  rect(-1, 200, 501, 51);
}
