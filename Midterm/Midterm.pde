Circle[] circles = new Circle[25];
float playerX, playerY;
PFont title;
PFont body;
String gameState;

void setup() {
  size(800, 800);
  frameRate (40);
 
  title = createFont ("Syncopate-Bold.ttf", 35);
  body = createFont ("Syncopate-Regular.ttf", 15);
 
  gameState = "START";
  
  for (int i = 0; i < circles.length; i++) {
    circles[i] = new Circle(random(width), random(height), random(-8, 8), random(-8, 8));
    
  }
}

void draw() {
  background(74, 137, 4);

  for (int i = 0; i < circles.length; i++) {
    circles[i].move();
    circles[i].display();
  }

if (gameState == "START") {
  startGame();
 } else if (gameState == "PLAY") {
  playGame();
 } else if (gameState == "HIGHSCORE") {
  highscore();
 }
}

void startGame() {
  textAlign(CENTER);
  textSize(18);
  fill(0);
  textFont(title);
  text("Click anywhere to play", width/2, height/3);
  
  fill(0);
  textFont(body);
  text("Move your cursor to avoid the circles for as long as you can.", width/2, height/2.5);
  text ("If you're ready press the screen!", width/2, height/2.3);
  
  if (mousePressed == true) {
    gameState = "PLAY";
  }
}

void playGame () {
  playerX = lerp(playerX, mouseX, 0.10);
  playerY = lerp(playerY, mouseY, 0.10);
  
  fill(255, 178, 77);
  stroke(0);
  ellipse(playerX, playerY, 30, 30);
  
  
  
}

void highscore() {
}

void playAgain () {
}
