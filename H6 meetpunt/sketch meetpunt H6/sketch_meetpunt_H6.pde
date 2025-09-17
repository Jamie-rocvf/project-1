//1
String automerk = "Mazda";
float leeftijd = 17;
int a = 1;
int b = 2;
println(a+b);

//2
//string automerk staat in "//1"
if(automerk == "Mazda"){
  println("Dat is een Mazda");
}
else{
  println("Dat is geen Mazda");
}

//3
//int leeftijd staat in "//1"
if(leeftijd <=1){
  println("Je bent een baby");
}
else if(leeftijd <=2){
  println("Je bent een dreumes");
}
else if(leeftijd <=4){
  println("Je bent een peuter");
}
else if(leeftijd <=6){
  println("Je bent een kleuter");
}
else if(leeftijd <=10){
  println("Je bent een kind");
}
else if(leeftijd <=17){
  println("Je bent een tiener");
}
else if(leeftijd <=21){
  println("Je bent een jong volwassene");
}
else if(leeftijd >21){
  println("Je bent een volwassene");
}

//4
//staat in het word document "H6-5-4 opdr"

//5
//staat in het word document "H6-5-4 opdr"

//6
//staat in het word document "H6-5-4 opdr"

//7
//staat in het word document "H6-5-4 opdr"

//8
int temperatuurCelsius = 12;
if(temperatuurCelsius >= 25 && temperatuurCelsius <=30){
  println("Het is warm");
}
else if(temperatuurCelsius >30){
  println("Het is heet");
}
else{
  println("Het is niet warm of heet, maar het is " + temperatuurCelsius + "°C");
}

//9
int speler1score = 30;
int speler2score = 30;

if(speler1score == speler2score){
  println("Het is gelijkspel");
}
else if(speler1score > speler2score){
  println("Speler 1 heeft gewonnen");
}
else{
  println("Speler 2 heeft gewonnen");
}

//10
int x = 9;
int y = 11;

if (x > 10) {
    x = x - 5;
}
else if (x > 10 || y <= 10) {
    x++;
    y++;
}
else {
  println("hier wil ik zijn");
}

//11
int steen1 = 6;
int steen2 = 6;
int steen3 = 6;
String resultaat = String.valueOf((steen1 + steen2 + steen3)/3);
if(steen1 ==6 && steen2 ==6 && steen3 ==6){
  println("Critical hit");
}
if(steen1 >1 && steen2 >1 && steen3 >1){
  println("Hit! Aantal schade: " + resultaat);
}
else if(steen1 ==1 && steen2 ==1 && steen3 ==1){
  println("Critical miss");
}
else{
  println("Mis");
}

//12
float cijfer = 5.5;
float lessenAanwezig = 16;
float totaalLessenNodig = 20.0 / 100.0 * 80.0;

if(lessenAanwezig >= totaalLessenNodig && cijfer >= 5.5){
  println("geslaagd");
}
