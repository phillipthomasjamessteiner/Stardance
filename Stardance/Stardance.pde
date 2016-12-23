
Starfield starf;
int State = 0;

void setup() {
  size(1080, 720);
  
  // Class Initializations
  
  starf = new Starfield();
  
}

void draw() {

  
  starf.run(2, 2);
  
  
}