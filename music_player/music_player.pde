
void setup () {
  size(600, 600);
  background (#8B6F6F);
  //Using WIDTH and HEIGHT Key Varaibles, communciaiton to the display Geometry
  //String[] fontList = PFont.list(); //To list all fonts available on system
  println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  titleFont = createFont ("Vivaldii-48", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"

  quitButtonSetup();
musicPlayerButtons();}

void draw() {
  
  quitButtonDraw();
}

void mouseClicked() { 
  quitButtonMouseClicked();
musicPlayerButtons();
}
