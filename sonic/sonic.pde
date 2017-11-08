import processing.serial.*;
Serial port;
PImage s;
int so, sx, radiusOfEnemy, speedOfHero=5, speedOfEnemy=1, Counter=0;
float positionOfEnemyY = 0.0, positionOfEnemyX=0.0;
void setup() {
  size(640, 400);
  s=loadImage("s.PNG");
}
void draw() {
  background(0);
  image(s, sx, 350, 50, 50);
  fill(255);
  text(Counter, 30, 175);
  fill(255, 0, 0);
  radiusOfEnemy=round(random(60));
  if (mouseX>sx) {
    sx+=2;
  }
  if (mouseX<sx) {
    sx-=2;
  }
  {
    for (int i = 0; i < height; i++) 
      positionOfEnemyY=positionOfEnemyY+0.01*speedOfEnemy;
    ellipse(positionOfEnemyX, positionOfEnemyY, radiusOfEnemy*2, radiusOfEnemy*2);
  }
  if (positionOfEnemyY>height) {
    positionOfEnemyY=0.0;
    positionOfEnemyX = round(random(width));
    Counter++;
  }
  if (abs(positionOfHeroX-positionOfEnemyX) < (radiusOfHero+radiusOfEnemy)/2 & 
    (abs(height-radiusOfHero/2)-positionOfEnemyY) < (radiusOfHero+radiusOfEnemy)/2) {
    background(255, 0, 0); 
    Counter=-1;
    fill(255);
    text("TURN AWAY!", 0, height/2);
  }
}
void serialEvent (Serial port) {
  positionOfHeroX=round(float(port.readStringUntil('\n')));
}