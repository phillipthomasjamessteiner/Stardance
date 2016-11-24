
class Starfield {
  ArrayList<Stars> stars;
  float spawnScale = 3;
  
  Starfield() {
    stars = new ArrayList<Stars>();
  }
  
  void run(float velX, float velY) {
    background(0);
    if (velX != 0 || velY != 0) {
      if (stars.size() < 300) {
        for(int i = 0; i < (int)((3+sqrt(pow(velX, 2) + pow(velY, 2)))/spawnScale); i++) {
          newStar();
        }
      }
      for (int s = 0; s < stars.size(); s ++) {
        stars.get(s).run(velX, velY);
        if (stars.get(s).isDead()) {
          stars.remove(s);
        }
      }
    }
    else {
      for (int s = 0; s < stars.size(); s ++) {
        stars.get(s).run(velX, velY);
      }
    }
  }
  
  void newStar() {
    switch ((int)random(0, 4)) {
      case 0:
        stars.add(new Stars(random(0, width), 0));
        break;
      
      case 1:
        stars.add(new Stars(random(0, width), height));
        break;
      
      case 2:
        stars.add(new Stars(0, random(0, height)));
        break;
      
      case 3:
        stars.add(new Stars(width, random(0, height)));
        break;
    }
  }
}