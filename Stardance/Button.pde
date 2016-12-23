
class Button {
  int buX, buY, buW, buH;
  
  Button() {
    
  }
  void bDraw(String bText, PFont f, int bX, int bY, int bW, int bH) {
    buX = bX;
    buY = bY;
    buW = bW;
    buH = bH;
    
    strokeWeight(5);
    stroke(75, 150);
    fill(100, 150);
    if (mouseX > buX && mouseX < (buX + buW) && mouseY > buY && mouseY < (buY + buH)) {
      stroke(80, 150);
      fill(111, 150);
    }
    rect(bX, bY, bW, bH, 1);
    
    noStroke();
    fill(255);
    textFont(f, 18);
    textAlign(CENTER, CENTER);
    text(bText, bX + (bW/2), bY + (bH/2));
    
    
  }
  boolean isPressed() {
    if (mousePressed && mouseX > buX && mouseX < (buX + buW) && mouseY > buY && mouseY < (buY + buH)) {
      return true;
    }
    else {
      return false;
    }
  }
}