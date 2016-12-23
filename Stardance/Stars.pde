
class Stars {
  int starX, starY;
  
  Stars(int sX, int sY) {
    starX = sX;
    starY = sY;
  }
  
  void run(int velX, int velY) {
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