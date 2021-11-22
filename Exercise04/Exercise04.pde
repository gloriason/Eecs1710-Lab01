LetterGenerator letters;
String _input = "ABCD";

void setup() {
  size(800, 600);
  textSize(400);
  background(0);
  letters = new LetterGenerator (_input, 400, 400);
  
}

void draw() {
  background(255);
  letters.run();
}

  { 
    noLoop();
}

void mousePressed(){
  redraw();
}
