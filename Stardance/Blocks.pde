

class Blocks {
  PVector offsetLocation;
  float rotation;
  color BlColor = color(255, 0, 0);
  int size = 10;
  
  Blocks(PVector l, color blockColor) {
    offsetLocation = l.get();
  }
  
  void blDraw(float rot, int shipX, int shipY, float scale) {
    rectMode(CENTER);
    strokeWeight(1*scale);
    stroke(red(BlColor)-20, red(BlColor)-20, red(BlColor)-20);
    fill(BlColor);
    
    pushMatrix();
      translate(shipX + (offsetLocation.x*scale), shipY + (offsetLocation.y*scale));
      rotate(radians(rot));
      rect(0, 0, size*scale, size*scale);
    popMatrix();
  }
  
  boolean collisionTest(int x, int y) {
    return false;
  }
  
}