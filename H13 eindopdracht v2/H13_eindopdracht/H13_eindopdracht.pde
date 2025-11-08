boolean gameover = false;

FloatList cirkelX; //X as van de cometen
FloatList wolkX; //X as van de wolken
FloatList wolkY; //Y as van de wolken
PImage player; //speler sprite
PImage comet; //comeet sprite
PImage cloud; //wolk sprite
int milliseconden = 0; //milliseconden voor timer
int vorigeTijd = 0; //startpunt van timer
Comet[] comets = {
  new Comet(random( 20, 100), random(30, 90), random(1, 3.5)),
  new Comet(random(100, 180), random(30, 90), random(1, 3.5)),
  new Comet(random(180, 260), random(30, 90), random(1, 3.5)),
  new Comet(random(260, 340), random(30, 90), random(1, 3.5)),
  new Comet(random(240, 320), random(30, 90), random(1, 3.5)),
  new Comet(random(320, 400), random(30, 90), random(1, 3.5)),
  new Comet(random(400, 480), random(30, 90), random(1, 3.5))};

Wolk[] clouds = {
  new Wolk (random(340, 360), random(80, 120)),
  new Wolk (random(260, 280), random(100, 140)),
  new Wolk (random(150, 170), random(120, 160)),
  new Wolk (random(420, 440), random(140, 180)),
  new Wolk (random(340, 360), random(160, 200)),
  new Wolk (random(140, 160), random(120, 220)),
  new Wolk (random(20, 40), random(200, 240)),
  new Wolk (random(90, 130), random(90, 130))};

void setup() {
  size(500, 500); //grootte scherm
  player = loadImage("C:\\Users\\jamie\\Desktop\\school\\progammering\\H13 eindopdracht v2\\player.png"); //speler sprite
  comet = loadImage("C:\\Users\\jamie\\Desktop\\school\\progammering\\H13 eindopdracht v2\\comet.png"); //comeet sprite
  cloud = loadImage("C:\\Users\\jamie\\Desktop\\school\\progammering\\H13 eindopdracht v2\\cloud.png");//comeet sprite
  textSize(24); //grootte timer text
}

float y1 = height; //comeet Y as

void draw() {

  if (gameover == true) { //spel eindiger
    int finalScoreSeconds = milliseconden / 1000;

    background(255, 0, 0); //rode achtergrond
    fill(255); //witte text
    textAlign(CENTER); //zet de tekst in het midden

    textSize(50); //text grootte "game over"
    text("GAME OVER!", width / 2, height / 2 - 40);

    textSize(30); //text grootte score
    text("Overleefde tijd: " + finalScoreSeconds + " seconden", width / 2, height / 2 + 10);

    textSize(24); //text grootte reset info
    text("Druk op 'r' om opnieuw te spelen", width / 2, height / 2 + 60);
    return;
  }

  background(0, 100, 255); //blauwe lucht
  fill(255);
  rect(-1, 0, 500, 60); //witte score balk
  fill(0, 200, 0);
  rect(-1, 430, 500, 100); //groen gras grond

  for (int i = 0; i < clouds.length; i++) { //loop om wolken te bewegen
    Wolk Cloud = clouds[i];

    Cloud.x = Cloud.x + 0.5;

    Cloud.tekenWolk(); // Roep teken-methode

    // Reset wolk wanneer het uit het scherm gaat
    if (Cloud.x >= width-60) { 
      Cloud.x = -10; // Start links
      Cloud.y = random(80, 220); // Geeft random Y-positie
    }
  }

  float playerX = mouseX - 30;
  float playerY = 400;
  float playerW = 60;
  float playerH = 70;

  image(player, playerX, playerY, playerW, playerH); //speler

  for (int i = 0; i < comets.length; i++) {
    Comet comet = comets[i];

    comet.y=comet.y + comet.snelheid;
    comet.tekenJezelf();

    float cometX = comet.x;
    float cometY = comet.y;
    float cometW = 30;
    float cometH = 70;

    // nieuwe verbeterde Collision Check
    if (playerX + playerW-10 >= cometX &&  //Rechterkant speler raakt linkerkant komeet
      playerX <= cometX + cometW-10 &&     //Linkerkant speler raakt rechterkant komeet
      playerY + playerH >= cometY &&       //Onderkant speler raakt bovenkant komeet
      playerY+20 <= cometY + cometH) {     //Bovenkant speler raakt onderkant komeet

      gameover = true; //zet game over naar true
      break; //Stopt de collision check totdat je opnieuw begint
    }

    if (comet.y >= 380) { //zet de comet terug boven
      comet.y = random(30, 90);
      comet.x = random(10, 490);
    }
  }

  if (millis() - vorigeTijd >= 10) { //timer
    milliseconden += 10;
    int seconden = milliseconden / 1000;

    vorigeTijd = millis(); //zet timer terug naar 0

    fill(0); //maakt de tekst zwart
    textAlign(20, 37); //houd de tekst in plaats
    text("Seconden: " + seconden, width / 40, height / 13); //laat de secondes zien
  }
}

void keyPressed() { //reset key
  if (key == 'r' || key == 'R') {
    if (gameover == true) {
      gameover = false;
      milliseconden = 0;
      vorigeTijd = millis();

      for (int i = 0; i < comets.length; i++) {//Reset de posities van de comets
        comets[i].x = random(width-40); //random X
        comets[i].y = random(30, 90); // random Y
      }
    }
  }
}
class Wolk {
  float x;
  float y;

  Wolk(float X, float Y) {
    this.x = X;
    this.y = Y;
  }

  void tekenWolk() {
    image(cloud, x, y, 80, 40);
  }
}

class Comet {
  float x;
  float y;
  float snelheid;

  Comet(float x, float y, float snelheid) {
    this.x = x;
    this.y = y;
    this.snelheid = snelheid;
  }

  void tekenJezelf() {
    image(comet, x, y, 30, 70);
  }
}
