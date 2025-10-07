void setup(){
  size(400, 400);
  Rectangle myRectangle = new Rectangle(150, 150, 100, 100);
  myRectangle.display();
}

class Rectangle {
  float x;
  float y;
  float B;
  float H;
  
  Rectangle(float x, float y, float B, float H){
    this.x = x;
    this.y = y;
    this.B = B;
    this.H = H;
  }
  
  void display() {
    rect(x, y, B, H);
  }
}
