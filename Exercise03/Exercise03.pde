int cx, cy;
float secondsRadius;
float minutesRadius;
float hoursRadius;
float clockDiameter;


void setup() {
  size(800, 600);
  stroke(255);
  
  int radius = min(width, height) / 2;
  secondsRadius = radius * 0.72;
  minutesRadius = radius * 0.60;
  hoursRadius = radius * 0.50;
  clockDiameter = radius * 1.7;
  
  cx = width / 2;
  cy = height / 2;
}

void draw() {
  background(50, 50, 50);
  
  stroke (125, 155, 203);
  strokeWeight(1);
  noFill ();
  ellipse(cx, cy, clockDiameter, clockDiameter);
 
float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI; 
  float h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;
  
  stroke(152, 133, 188);
  strokeWeight(1);
  line(cx, cy, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
  strokeWeight(2);
  line(cx, cy, cx + cos(m) * minutesRadius, cy + sin(m) * minutesRadius);
  strokeWeight(4);
  line(cx, cy, cx + cos(h) * hoursRadius, cy + sin(h) * hoursRadius);
  
  stroke(255);
  strokeWeight(4);
  beginShape(POINTS);
  for (int a = 0; a < 360; a+=30) {
    float angle = radians(a);
    float x = cx + cos(angle) * secondsRadius;
    float y = cy + sin(angle) * secondsRadius;
    vertex(x, y);
  }
    
  strokeWeight(1);
  beginShape(POINTS);
  for (int b = 0; b < 360; b+=6) {
    float angle = radians(b);
    float x = cx + cos(angle) * secondsRadius;
    float y = cy + sin(angle) * secondsRadius;
    vertex(x, y);
  }
  
  fill(152, 133, 188);
  noStroke();
  ellipse (cx, cy, 15, 15);
  
  endShape();
}
