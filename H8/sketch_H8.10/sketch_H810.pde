size(125,125);
background(255,255,255);

for(int i = 10; i < 100; i++){
  int sizeR = 10;
  fill(255,255,255);
  rect(i, i, 10+sizeR, 10+sizeR);
  i = i + 20;
  sizeR = sizeR + 20;
}
