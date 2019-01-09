
//boolean playButton = FALSE;

void MusicPlayerButtons() {
  //playbutton
  ellipse (width*1/2, height*1/2, width*5/8, height*4/8);
  ellipse(width*1/2, height*1/2, width*2.5/8, height*2/8);
  //additional buttons
    fill (#D6A623);
  ellipse(width*1/8, height*11/16, width*4/16, height*3/16);
  ellipse(width*7/8, height*11/16, width*4/16, height*3/16);
  fill (#F7F7F7);
  //music icon
  rect(width*3/8, height*1/16, width*4/16, height*2/16, 50);
  //menu
  ellipse(width*1/32, height*1/32, width*1/32, height*0.8/32);
  ellipse(width*1/32, height*2/32, width*1/32, height*0.8/32);
  ellipse(width*1/32, height*3/32, width*1/32, height*0.8/32);
  //next song & previous song
  triangle (width*11/16, height*13/16, width*11/16, height*15/16, width*14/16, height*14/16);
  strokeWeight(5);
  line(width*10.75/16, height*15/16, width*10.75/16, height*13/16);
  line(width*5.25/16, height*15/16, width*5.25/16, height*13/16);
  strokeWeight(1);
  triangle(width*5/16, height*13/16, width*5/16, height*15/16, width*2/16, height*14/16);
  //wavelength(volume reader);
  rect(width*3/8, height*13/16, width*4/16, height*2/16, 10); 
  //Next
}
void playbuttonDraw() {
// if (mouseX>width*3/8 && mouseX<width*&& mouseY>0 && )
}
