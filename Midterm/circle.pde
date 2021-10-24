class Circle {
  float x, y;
  float xSpeed, ySpeed;
    
  Circle(float x, float y, float xSpeed, float ySpeed) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
  }

  void move () {
    x += xSpeed;
    if (x < 0 || x > width) {
      xSpeed *= -1;
    }

    y += ySpeed;
    if (y < 0 || y > height) { 
      ySpeed *= -1;
    }
  }
  
  void display(){
    stroke (0);
    fill(255);
   ellipse(x, y, 30, 30); 
  }
}
