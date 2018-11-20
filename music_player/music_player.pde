//global variables: declartaiona dn assignments
color TEAL = #008080   ;
color PURPLE = #DA70D6   ;
color regularButton = PURPLE ;
color hoverover = TEAL ;
color blue;
String title = ("exit");
PFont titleFont;

void quitbuttonsetup () {
    titleFont = createFont ("Ming-Lt-HKSCS-ExtB-48", 50);
}


void quitbuttondraw () {
  println ("mousex:", mouseX, "\tmouseY:", mouseY);
  if (mouseX> width*15/16 && mouseX<width && mouseY>0 && mouseY<height*1/16) { //hoverover
    fill (hoverover) ;
    rect(width*15/16, height*0/16, width*1/16, height*1/16);
  } else {
    fill (regularButton) ;
    rect(width*15/16, height*0/16, width*1/16, height*1/16);
  }
  blue = (#33FFCC);
  textAlign (RIGHT);
    fill (blue);
  textFont (titleFont, 15);
  text(title, width*15/16, height*0, width*1/16,height*1/16);
}
//listener
void quitbuttonmouseClicked() {
  if (mouseX> width*15/16 && mouseX<width && mouseY>0 && mouseY<height*1/16) {
    exit();
  }
} //end mousclik
