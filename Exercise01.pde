PFont font;
int fontSize = 24;
String message = "✲ﾟ｡.(✿◠‿◠)ﾉ☆.｡₀";
color bgColor = color(232, 232, 232);

void setup() {
  size(800, 600, P2D); // P2D enables 2D GPU acceleration
  background(bgColor);
  frameRate(60);
  font = createFont("arial", fontSize);
  textFont(font, fontSize);
  fill(48, 27, 245);
}

void draw() {  
  if (mousePressed) {
    text(message, mouseX, mouseY);
    surface.setTitle ("" + frameRate);
  }
}
