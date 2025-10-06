boolean gevonden;
String[] namen = {"Piet", "Kees", "Jan", "Marie", "Lisa"};

void setup() {
  gevonden = false;
  
  for (int i = 0; i < namen.length; i++) {
    
    if (namen[i].equals("Jan")) {
      gevonden = true;
    }
    
  }
  
  println(gevonden); 
}

void draw() {
}
