
class Stars {
  float starX, starY;
  
  Stars(float sX, float sY) {
    starX = sX;
    starY = sY;
  }
  
  void run(float velX, float velY) {
    starX += velX;
    starY += velY;
    
    stroke(255);
    strokeWeight(1);
    point(starX, starY);
  }
  
  boolean isDead() {
    if (starX < 0 || starX > width || starY < 0 || starY > height) {
      return true;
    }
    else {
      return false;
    }
  }
}