
void musicPlayerGUI_Setup() {
  rect(width*1/2,height*1/2,width*1/16,height*5/16,10); // Device Rectangle with rounded courners, need extra 10 pixels
  // Option to put gradient
  
  //Main Button Area, Concentric Rings
 stroke(3);
  ellipse(width*1/2,height*1/2,width*4/8,height*4/8); //Outer
  /*
  stroke(4); //changes the thickness of the line
  ellipse(); // Middle
  stroke(1); //resets default
  ellipse(); //Inside
  //Option to fill with different colours
  //fill(); //reminder: reset to defaults each time
  */
  
  //Play-Pause Button
  //rect( , , , , 15); //Courners Rounded more than Outer Rectangle, change?
  //triangle(); //Notice X&Y Coordinates
  //line();
  //line(); 
  
  //Mext and Previous Buttons
  /*
  triangle(); //Next Button
  triangle(); 
  line();
  triangle(); //Previous Button
  triangle(); 
  line();
  */
    triangle (width*14/16,height*12/16,width*14/16,height*12/16,width*15/16,height*15/16); //1
  triangle (width*12/16,height*12/16,width*14/16,height*12/16,width*14/16,height*15/16);
  
  //Volume Buttons
  //line(); //Volume Up
  //line();
  //line(); //Volume Down
  
  //Colour Fill Power Button
  //fill(); //Green for Play, Red for not-play, press for end()
  //ellipse(); 
  
  //Menu Button
  //ellipse(); //Concentric Rings
  //ellipse(); 
  //ellipse(); 
  //ellipse(); //3-dots
  //ellipse(); 
  //ellipse(); 
  
}
