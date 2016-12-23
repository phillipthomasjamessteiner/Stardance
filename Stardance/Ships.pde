
class Ships {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float headAngle;
  
  ArrayList<Blocks> blocks;
  
  Ship(int absX, int absY) {
    location = new PVector(absX, absY);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    headAngle = random(0, 360);
    
    blocks = new ArrayList<Blocks>();
  }
  
  void run() {
    
  }
}