PFont DosVGAFont;
PFont Calibri;
int mouseScroll;

Starfield starf;
int ScreenState = 0; 

// Main Physics Vectors

PVector CharacterABSLocation;
PVector CharacterVelocity;
PVector CharacterAcceleration;
boolean inShip = false;
float astronautVel = 1;

// Start Screen
Button StartButton;
Button OptionButton;

// Array Lists

ArrayList<Ships> ships;

void setup() {
  size(1080, 720);
  rectMode(CORNER);
  ellipseMode(CENTER);
  
  // PVector Initializations'
  
  CharacterABSLocation = new PVector(0, 0);
  CharacterVelocity = new PVector(0, 0);
  CharacterAcceleration = new PVector(0, 0);
  
  // ArrayList Initializations
  
  ships = new ArrayList<Ships>();
  
  // Fonts
  DosVGAFont = loadFont("PerfectDOSVGA437-48.vlw");
  Calibri = loadFont("Calibri-48.vlw");
  
  // Class Initializations
  
  starf = new Starfield();
  
  StartButton = new Button();
  OptionButton = new Button();
  
}

void draw() {
  
  switch(ScreenState) {
    case 0: //Start Menu
      starf.run(5, 6);
      
      strokeWeight(5);
      stroke(#50538E, 150);
      fill(#37396F, 150);
      rect((width/2)-150, (height/2)-250, 300, 500, 3);
      
      StartButton.bDraw("Press to Start", Calibri, (width/2)-100, 155, 200, 50);
      OptionButton.bDraw("Options", Calibri, (width/2)-100, 230, 200, 50);
      
      if (StartButton.isPressed()) {
        ScreenState = 1;
      }
      if (OptionButton.isPressed()) {
        ScreenState = 3;
      }
      // Start Menu
      break;
    case 1:
      calcLoc();
      starf.run(-1 * CharacterVelocity.x, -1 * CharacterVelocity.y);
      mainFrame();
      break;
    case 2:
      starf.run(5, 6);
      // Build Menu
      break;
    case 3:
      starf.run(5, 6);
      // Options Menu
      break;
  }
}

void calcLoc() {
  float mxScale = ((float)mouseX - ((float)width/2))/( abs((float)mouseX-((float)width/2)) + abs((float)mouseY-((float)height/2)));
  float myScale = ((float)mouseY - ((float)height/2))/( abs((float)mouseX-((float)width/2)) + abs((float)mouseY-((float)height/2)));
  if (!inShip) {
    if (keyPressed && key == CODED && keyCode == UP) {
      CharacterVelocity.x = astronautVel * mxScale;
      CharacterVelocity.y = astronautVel * myScale;
    }
    else if (keyPressed && key == CODED && keyCode == DOWN) {
      CharacterVelocity.x = -1 * astronautVel * mxScale;
      CharacterVelocity.y = -1 * astronautVel * myScale;
    }
    else {
      CharacterVelocity.x = 0;
      CharacterVelocity.y = 0;
    }
  }
  else {
    
  }
  CharacterABSLocation.x += CharacterVelocity.x;
  CharacterABSLocation.y += CharacterVelocity.x;
  println(CharacterABSLocation.x + " | " + CharacterABSLocation.y);
}

void mainFrame() {
  if (!inShip) {
    stroke(150);
    strokeWeight(2);
    fill(175);
    ellipse(width/2, height/2, 8, 8);
  }
}

void mouseWheel(MouseEvent event) {
  if (mouseScroll == 0 && event.getCount() < 0) {}
  else {mouseScroll += event.getCount();}
}