void setup() {
  size(500, 250);
  background(0, 0, 255);
  tekenBoom(240, 70, 20, 150, 250, 100);
}

void tekenBoom(int x, int y, int RB, int RL, int x2, int E) {
  fill(90, 40, 10);
  rect(x-120, y+20, RB, RL);
  fill(0, 255, 0);
  ellipse(x2-120, y+20, E, E);
  
  fill(90, 40, 10);
  rect(x, y, RB, RL);
  fill(0, 255, 0);
  ellipse(x2, y, E, E);
  fill(0, 255, 0);

  fill(90, 40, 10);
  rect(x-40, y-20, RB, RL);
  fill(0, 255, 0);
  ellipse(x2-40, y-20, E, E);

  fill(90, 40, 10);
  rect(x-80, y, RB, RL);
  fill(0, 255, 0);
  ellipse(x2-80, y, E, E);
  
    fill(90, 40, 10);
  rect(x+80, y-20, RB, RL);
  fill(0, 255, 0);
  ellipse(x2+80, y-20, E, E);
  fill(0, 255, 0);

  fill(90, 40, 10);
  rect(x-180, y-20, RB, RL);
  fill(0, 255, 0);
  ellipse(x2-180, y-20, E, E);


  rect(-1, 200, 501, 51);
}
