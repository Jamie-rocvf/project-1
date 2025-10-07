void setup() {
  bankbalans mybankbalans = new bankbalans(800, "Jamie Leijs");
  mybankbalans.display();
}

class bankbalans {
  float balans;
  String eigenaar;

  bankbalans(float balans, String eigenaar) {
    this.balans = balans++;
    this.eigenaar = eigenaar;
  }

  void display() {
    println(eigenaar + " heeft €" + balans);
  }
}
