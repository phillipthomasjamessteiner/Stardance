PFont DosVGAFont;
PFont Calibri;
int mouseScroll;

Starfield starf;
int ScreenState = 0;

// Start Screen
Button StartButton;
Button OptionButton;

//Ship Array Lists

void setup() {
  size(1080, 720);
  rectMode(CORNER);
  
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
      // Main Frame
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

void mouseWheel(MouseEvent event) {
  if (mouseScroll == 0 && event.getCount() < 0) {}
  else {mouseScroll += event.getCount();}
  println(mouseScroll);
}