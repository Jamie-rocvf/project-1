int a = 8;

void setup(){
  methode(a, 6);
  methode(a, 26);
}

void draw(){
}

void methode (int b, int c){
  int gemiddeld = (b + c)/2;
  println("gemiddelde van: " + b + " en " + c + " = " + gemiddeld);
}
