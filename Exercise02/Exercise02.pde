
PImage sunset;
float x1, y1, x2, y2;
float speedX1, speedX2;

void setup() {
  size(900, 400, P2D);
  sunset = loadImage("sunset.png");
  sunset.resize(sunset.width * (height / sunset.height), height);
  imageMode(CENTER);
  
  x1 = width/2;
  y1 = height/2;
  x2 = x1 + 50;
  y2 = y1 - 50;
  speedX1 = 5;
  speedX2 = speedX1 * 0.5;
}

void draw() {
    
  tint(255, 127);
  image(sunset, x2, y2);
  
  noTint();
  image(sunset, x1, y1); // the image drawn last will be in front
  
  x1 += speedX1;
  x2 += speedX2;
    
  if (x1 > width || x1 < 0) {
    speedX1 *= -1;  
    speedX2 *= -1;
  }
}
