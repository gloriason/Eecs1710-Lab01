class LetterGenerator {
  
  PImage letter;
  float xpos, ypos;
  float x, y, r;
  String input;
  color col;
  
  LetterGenerator (String _input, float xpos, float ypos) {
    input = _input;
    this.xpos = xpos;
    this.ypos = ypos;
    letter = get();
    col = getRandomColor();
  }
  
  void update() {
  float x, y, r;
  background(255);
  for ( int t = 0; t < 10000; t++) {
    x = random(width);
    y = random(height);
    if ( letter.get(int(x), int(y)) != color(0) ) {
      r = random(5, 10);
      strokeWeight(0);
      fill(col);
      ellipse(x, y, r, r);
    }
  }
  noLoop();
}
  color getRandomColor() {
    return color(127 + random(127), 127 + random(127), 127 + random(127));
  }
  
  void draw() {
    textAlign(CENTER);
    background(255);
  }
  
  void run() {
    update();
    draw();
  }
  
}
