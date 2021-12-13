PImage sunset;

void setup() {
  size(500, 751);
  sunset = loadImage("sunset.png");
}

void draw() {
  background(255);
  fill(0);
  noStroke();
  
  float tiles = mouseX/5;
  float tileSize1 = width/tiles;
  float tileSize2 = height/tiles;
 
 for (int x = 0; x < tiles; x++) {
   for (int y = 0; y < tiles; y++) {
     
     color c = sunset.get(int(x*tileSize1), int(y*tileSize2));
     float size = map(brightness(c), 0, 255, tileSize1, 0);
     
     ellipse(x*tileSize1, y*tileSize2, size, size);
   }
 }
}
     
