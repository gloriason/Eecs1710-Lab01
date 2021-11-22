PImage bg;
PImage img;
PFont mazius;
int gap = 4;
int a;

void setup () {
  size(800, 800, P3D);
  bg = loadImage("pixels_bg.png");
  img = loadImage("body.png");
  mazius = createFont("MAZIUS20.09-Italic.otf", 20);
}

void draw () {
  background(198, 198, 198);
    a += 1;
    if(a<=255){
    fill(255,a);
  }

    noStroke ();
  
      for(int i = 0; i < bg.height; i+=gap)  {
      for(int j = 0; j < bg.width; j+=gap)  {
        color bgc = bg.pixels[j * bg.width + i];
        fill(bgc);
        circle(j, i, gap);
      }
    }
    
  float tiles = 200;
  float tileSize = width/tiles;
  
  push();
  translate(width/2, height/2);
  rotateY(radians(frameCount));
 
  for (int x = 0; x < tiles; x++) {
    for(int y = 0; y < tiles; y++) {
      
      color c = img.get (int(x * tileSize), int(y * tileSize));
      float b = map(brightness(c), 0, 255, 1, 0);
      
      float m = map(b , 0, 1, -50, 50);
      
      push();
      translate(x * tileSize - width/2, y * tileSize - height/2, m);
      fill(50, 50, 50);
      ellipse(0, 0, b* tileSize, b * tileSize);
      pop();
    }
  }
  pop();
  
    textAlign (CENTER);
    fill(0);
    textFont(mazius);
    text("intuition", 400, 680, 0);
  
}
