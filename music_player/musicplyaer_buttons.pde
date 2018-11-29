
boolean playButton = false;

void musicPlayerButtons() {
  //slider
    ellipse(width*1/2,height*1/2,width*2/8,height*2/8);//inner
ellipse (width*1/2,height*1/2,width*4/8,height*4/8);
//ivonds
  rect(width*6/8,height*1/4,width*2/16,height*2/16,10);
  rect(width*17/24,height*1/16,width*4/16,height*2/16);
  //menu
  ellipse(width*1/32,height*1/32,width*0.8/32,height*0.8/32);
    ellipse(width*1/32,height*2/32,width*0.8/32,height*0.8/32);
    ellipse(width*1/32,height*3/32,width*0.8/32,height*0.8/32);
  //Play-Pause
triangle (width*10/16,height*15/16,width*10/16,height*13/16,width*13/16,height*14/16); //1

rect (width*1/2,height*1/2,width*1/8,height*1/8);
     if (mouseX>width*10/16  && mouseX<width*10/16 && mouseY>height*15/16 && mouseY>height*14/16); 
  if (playButton == true) {
    playButton = false;
      fill(#28BD8B);
triangle (width*10/16,height*15/16,width*10/16,height*13/16,width*13/16,height*14/16); //1
  } else {
    fill (#BD2850);
    triangle (width*10/16,height*15/16,width*10/16,height*13/16,width*13/16,height*14/16); //1
    playButton = true;
  }
  println(playButton);
  //Next
  //Previous
  //Volume slider (interactive circle)
  fill (#FFFFFF);
   
  ellipse(width*1/2,height*1/2,width*2/8,height*2/8);//inner
//rect (width*5/8,height*6.5/8,width*1.75/8,height*1/8);
  if (mouseX>width*5/8 && mouseX>width*1.75/8 && mouseY>height*6.5/8 && mouseY>height*1/8); 
  else{
  fill(#475751);//rey
  ellipse(width*1/2,height*1/2,width*2/8,height*2/8);
    fill (#BD2850);
      ellipse(width*1/2,height*1/2,width*2/8,height*2/8);

  }
}

  
 
