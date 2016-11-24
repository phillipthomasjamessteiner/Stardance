
class Ships {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float headAngle;
  
  ArrayList<Blocks> blocks;
  
  Ships(int absX, int absY) {
    location = new PVector(absX, absY);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    headAngle = random(0, 360);
    
    blocks = new ArrayList<Blocks>();
  }
  
  void run() {
    
  }
  
  void addBlock(int x, int y, color bl) {
    blocks.add(new Blocks(new PVector(x, y), bl));
  }
}