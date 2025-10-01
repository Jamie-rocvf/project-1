void vierkant(float x, float y, float breedte) {
  line(x, y, x + breedte, y);
  line(x + breedte, y, x + breedte, y + breedte);
  line(x + breedte, y + breedte, x, y + breedte);
  line(x, y + breedte, x, y);
}

void setup() {
  size(355, 355);
  background(255);
  stroke(0);
}

void draw() {
  vierkant(100, 100, 150);
  noLoop();
}
