import ddf.minim.*;

Minim minim;

AudioPlayer player;
boolean playbutton = false;
void musicplayersetup(){
  
 minim = new Minim (this);
 player = minim.loadFile("Judgement - Devilman Crybaby OST.mp3");
 player.play();
 player.loop();
}
void musicdraw(){

ellipse(width*1/8, height*11/16,player.left.get(1)*100,100);
ellipse(width*7/8, height*11/16,player.left.get(1)*100,100);

//rect (width*0.5/2,height*2/4,width*5/8,height*3/8);
}
void musicmousepressed(){
  if (mouseX >width*1/8 && mouseX<width*6/16 && mouseY>height*4/8 && mouseY<height*4/8 ){
    playbutton = !playbutton;
 player.rewind();
  }else{
    playbutton = true;
  }
}
