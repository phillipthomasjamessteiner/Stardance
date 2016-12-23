
class Starfield {
  ArrayList<Stars> stars;
  
  
  Starfield() {
    stars = new ArrayList<Stars>();
  }
  
  void run(int velX, int velY) {
    background(0);
    if (velX != 0 || velY != 0) {
      if (stars.size() < 300) {
        newStar();
      }
      for (int s = 0; s < stars.size(); s ++) {
        stars.get(s).run(velX, velY);
        if (stars.get(s).isDead()) {
          stars.remove(s);
        }
      }
    }
  }
  
  void newStar() {
    switch ((int)random(0, 4)) {
      case 0:
        stars.add(new Stars((int)random(0, width), 0));
        break;
      
      case 1:
        stars.add(new Stars((int)random(0, width), height));
        break;
      
      case 2:
        stars.add(new Stars(0, (int)random(0, height)));
        break;
      
      case 3:
        stars.add(new Stars(width, (int)random(0, height)));
        break;
    }
  }
}