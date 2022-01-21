class Drop {
  float x = random(width);
  float y = random(-height, -50);
  float z = random(0, 20);
  
  void show() {
    float len = map(z, 0, 20, 10, 15);
    float dropShape = map(z, 0, 20, 1, 2.5);
    
    strokeWeight(dropShape);
    stroke(#7673fb);
    line(x, y, x, y - len);
  }

  void fall() {
    float ySpeed = map(z, 0, 20, 10, 20);
    float grav = map(z, 0, 20, 0.1, 0.18);
    
    y = y + ySpeed;
    ySpeed = ySpeed + grav;

    if (y > height) {
      y = random(-height, -10);
      ySpeed = map(z, 0, 20, 10, 20);
    }
  }
}
