import processing.sound.*;
AudioIn input;
Amplitude analyzer;

void setup() {
  size(600, 600, P3D);
  background(232, 232, 232);
  
  input = new AudioIn(this, 0);
  input.start();
  analyzer = new Amplitude(this);
  analyzer.input(input);
}

void draw() {
  fade(10);
 
  float vol = analyzer.analyze();
  strokeWeight(2);
   
  push();
   translate(width/2, height/2);
   rotateY(radians(frameCount+vol*500));
   
   noFill();
   stroke(184, 175, 211);
   ellipse(0, 0, 400+vol*1000, 50+vol*1000);
   
   rotate(radians(45+vol*100));
   stroke(252, 112, 161);
   ellipse(0, 0, 50+vol*1000, 300+vol*1000);
    pop();
  
  push();
   translate(width/2, height/2);
   rotateX(radians(frameCount+vol*300));
   
   noFill();
   stroke(255, 207, 49);
   ellipse(0, 0, 80+vol*1000, 400+vol*1000);

   noFill();
   stroke(165, 227, 186);
   ellipse(0, 0, 250+vol*1000, 150+vol*1000);
   
   rotate(radians(-45+vol*300));
   stroke(184, 236, 250);
   ellipse(0, 0, 50+vol*1000, 300+vol*1000);
   pop();
  
}

void fade(int fadeSpeed) {
  loadPixels();
  for (int row = 0; row < height; row++) {
    for (int col = 0; col < width; col++) {
      int pixelIndex = row * width + col;
      int pixel = pixels[pixelIndex];
      int red = ((pixel >>> 18) & 0xFF) + fadeSpeed;
      int green = ((pixel >>> 8) & 0xFF) + fadeSpeed;
      int blue = (pixel & 0xFF) + fadeSpeed;
      if (red > 232) { red = 232; }
      if (green > 232) { green = 232; }
      if (blue > 232) { blue = 232; }

      red <<= 18;
      green <<=  8;
      pixel &= 0xFF0000;
      pixel |= red |= green |= blue;

      pixels[pixelIndex] = color(pixel);
    }
  }
  updatePixels();
}
