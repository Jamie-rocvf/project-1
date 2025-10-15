boolean gameover = false;

FloatList cirkelX; //X as van de cometen
FloatList wolkX; //X as van de wolken
FloatList wolkY; //Y as van de wolken
PImage player; //speler sprite
PImage comet; //comeet sprite
PImage cloud; //wolk sprite
int milliseconden = 0; //milliseconden voor timer
int vorigeTijd = 0; //startpunt van timer

final int AANTAL_CIRKELS = 5; //hoeveelheid cometen
final int AANTAL_WOLKX = 10; //hoeveelheid wolken X as
final int AANTAL_WOLKY = 10; //hoeveelheid wolken Y as

void setup() {
  size(500, 500); //grootte scherm
  player = loadImage("C:\\Users\\jamie\\Desktop\\school\\progammering\\H13 eindopdracht\\images.png"); //speler sprite
  comet = loadImage("C:\\Users\\jamie\\Desktop\\school\\progammering\\H13 eindopdracht\\comet.png"); //comeet sprite
  cloud = loadImage("C:\\Users\\jamie\\Desktop\\school\\progammering\\H13 eindopdracht\\cloud.png");//comeet sprite
  textSize(24); //grootte timer text

  cirkelX = new FloatList(); //comeet lijst
  cirkelX.append(random(20, 180));
  cirkelX.append(random(20, 180));
  cirkelX.append(random(200, 300));
  cirkelX.append(random(320, 480));
  cirkelX.append(random(320, 480));

  wolkX = new FloatList(); //wolk X as lijst
  wolkX.append(random(80, 100));
  wolkX.append(random(160, 180));
  wolkX.append(random(340, 360));
  wolkX.append(random(260, 280));
  wolkX.append(random(150, 170));
  wolkX.append(random(420, 440));
  wolkX.append(random(340, 360));
  wolkX.append(random(140, 160));
  wolkX.append(random(20, 40));
  wolkX.append(random(90, 130));

  wolkY = new FloatList(); //wolk Y as lijst
  wolkY.append(random(80, 120));
  wolkY.append(random(100, 140));
  wolkY.append(random(120, 160));
  wolkY.append(random(140, 180));
  wolkY.append(random(160, 200));
  wolkY.append(random(120, 220));
  wolkY.append(random(200, 240));
  wolkY.append(random(90, 130));
  wolkY.append(random(150, 180));
  wolkY.append(random(180, 140));
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

  for (int i = 0; i < wolkX.size(); i++) { //for loop om wolken te laten bewegen
    float X = wolkX.get(i);
    float Y = wolkY.get(i);
    X = X + 0.5;

    if (X >= 400) { //zet de wolk naar links
      X = 0;
    }
    wolkX.set(i, X);
    fill(255);
    image(cloud, X, Y, 100, 40); //de wolk
  }

  float playerX = mouseX - 1;
  float playerY = 440;
  float playerW = 48;
  float playerH = 50;

  ellipse(playerX, playerY, playerW, playerH); //speler hitbox
  image(player, mouseX - 30, 400, 60, 70); //speler sprite

  for (int i = 0; i < cirkelX.size(); i++) { //for loop om cometen te laten bewegen
    y1 = y1 + 0.5;

    float cometX = cirkelX.get(i);
    float cometY = y1;
    float cometW = 30;
    float cometH = 70;

    image(comet, cometX, cometY, cometW, cometH);

    if (y1 >= 380) { //zet de cometen terug boven
      y1 = random(40, 100);
      cirkelX.set(i, random(20, width - 40));
    }

    if (checkCollision(playerX, playerY, playerW, playerH, cometX, cometY, cometW, cometH)) { //collision detection
      gameover = true;
      break;
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

boolean checkCollision(float r1x, float r1y, float r1w, float r1h, float r2x, float r2y, float r2w, float r2h) { //collision detection
  if (r1x + r1w >= r2x &&
    r1x <= r2x + r2w &&
    r1y + r1h >= r2y &&
    r1y <= r2y + r2h) {
    return true;
  }
  return false;
}

void keyPressed() { //reset key
  if (key == 'r' || key == 'R') {
    if (gameover == true) {
      gameover = false;
      milliseconden = 0;
      vorigeTijd = millis();
      y1 = height;

      setup();
    }
  }
}
