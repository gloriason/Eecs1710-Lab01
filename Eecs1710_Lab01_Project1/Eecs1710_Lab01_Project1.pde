PImage bear;
PShape sparkle;
PFont f;
float xpos;
float ypos;
int a = 40;

float mx[] = new float[a];
float my[] = new float[a];

Animation sleep;
Animation laugh;
Animation wave;

void setup() {
  size(800, 800);
  frameRate(8);
  
  f = createFont("JosefinSans-Medium.ttf", 35);
  textFont(f);
  
  bear = loadImage ("bear_default.png");
  sparkle = loadShape("sparkle.svg");
  
  
  sleep = new Animation("sleep_", 6);
  laugh = new Animation("laugh_", 2);
  wave = new Animation("wave_", 2);
  
  xpos = width/2;
  ypos = height/2;
}

void draw () {
  
  background(255);
  imageMode(CENTER);
  image(bear, xpos, ypos);

    if (mouseX > 350 && mouseX < 450 && mouseY > 150 && mouseY < 250) {
    background(252, 245, 204);
    sleep.display(xpos, ypos);
   } 
    if (mouseX > 200 && mouseX < 250 && mouseY > 250 && mouseY < 350) {
    background (255, 237, 248);
    wave.display(xpos, ypos);
  }
    if (mouseX > 450 && mouseX < 550 && mouseY > 550 && mouseY < 700) {
    background (222, 250, 236);
    laugh.display(xpos, ypos);
    }
  
  int f = frameCount % a;
  mx[f] = mouseX;
  my[f] = mouseY; 
  for (int i = 0; i < a; i++) {
    int index = (f+1 + i) % a;
    shapeMode(CENTER);
    shape(sparkle, mx[index], my[index], i, i);
      
  fill(0);
  String hi = "Hi, I'm Beary.";
  text(hi, 50, 725, 800, 200);
  
  }
}
  
