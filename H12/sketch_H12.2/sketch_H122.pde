void setup() {
  Persoon p = new Persoon("Jamie ", "Leijs");
  p.display();
}

class Persoon {
  String voornaam;
  String achternaam;
  String naam;
  
  Persoon(String voornaam, String achternaam) {
    this.voornaam = voornaam;
    this.achternaam = achternaam;
    this.naam = voornaam + achternaam;
  }
  
  void display() {
    println(naam);
  }
}
