import ddf.minim.*;
import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;
//song code
Minim minim;
int numberofSongs = 4;
AudioPlayer[] song = new AudioPlayer[4];
int currentSong = numberofSongs - numberofSongs;
boolean loopbutton = false;
boolean nextsong = false;

//sound effects
AudioSample pause;
AudioSample menu;
AudioSample play ;
AudioSample previous;
//images
PImage shuffle;
PImage loop;
void MusicPlayerSetup() {

  minim = new Minim (this);
  song[0] =  minim.loadFile("Judgement - Devilman Crybaby OST.mp3");
  song[1] = minim.loadFile("Castlevania - Bloody Tears Acapella.mp3");
  song[2] = minim.loadFile("DARK SOULS II - Sir Alonne (Piano Violin Version) (mp3cut.net).mp3");
  song[3] = minim.loadFile("Kiras Theme (Killer) OST - Jojos Bizarre Adventure Part 4 Diamond Is Unbreakable.mp3");
  pause = minim.loadSample("pause-sound.mp3");
  play = minim.loadSample("start.mp3");
  previous = minim.loadSample("previous(sound effect).mp3");
  shuffle = loadImage("download.png"); //width 225pixels, height 225pixels
  loop = loadImage ("loop.png");
  //song[0].play();
}
void MusicDraw() {
  fill(#c8a2c8 );
  ellipse(width*1/8, height*11/16, song[currentSong].left.get(currentSong)*100, 110);
  ellipse(width*7/8, height*11/16, song[currentSong].left.get(currentSong)*100, 110);
  fill(#FDF7FF);

  //rect (width*10.25/16, height*13/16, width*3/16, height*1.95/16);//next song button
  rect(width*5.75/16, height*13/16, width*2/16, height*2/16 ); 
  image (shuffle, width*5.75/16, height*13/16, width*2/16, height*2/16);
  rect(width*8/16, height*13/16, width*2/16, height*2/16, 10); 
  image(loop, width*8.25/16, height*13.2/16, width*1.5/16, height*1.5/16);
  //rect(width*2.75/8, height*3/8, width*2.5/8, height*1.9/8);//play pause coordinate
  // rect(width*2.25/16, height*13/16, (width*5.25/16)-(width*2.25/16), (height*14.95/16)-(height*13/16) ); play pause button
}
void MusicMousePressed() {
  //rect(width*1/4, height*3/8, width*5/8, height*4/8);
  //  rect(width*2.75/8,height*3/8, width*3.75,height*1.9/8);

  if (mouseX>width*2.75/8 && mouseX<width*5.25/8 && mouseY>height*3/8 &&  mouseY<height*4.9/8 && song[currentSong].isPlaying()) {
    println("play pause");
    song[currentSong].pause();
    fill(#87B99B);
    ellipse(width*1/2, height*1/2, width*2.5/8, height*2/8);
    fill(#F7F7F7);
    pause.trigger();
  } else {
    play.trigger();
    song[currentSong].play();
    fill(#C95D5D);
    ellipse(width*1/2, height*1/2, width*2.5/8, height*2/8);
    fill(#F7F7F7);
  }

  //shuffle
  /*
if (mouseX>5.75/16 && mouseX<7.75/16 && mouseY>height*13/16 && mouseY<height*15/16){
   song.random();
  
}
*/
  //loop button
  if (mouseX>width*8.25/16 && mouseX<width*9.75/16 && mouseY>height*13.2/16 && mouseY<height*14.7/16 ) {
    song[currentSong].rewind();
  }


  //previous song
  if (mouseX>width*2.25/16 && mouseX<width*5.25/16 && mouseY>height*13/16 && mouseY<height*14.95/16) {
    println ("pressed");
    //song[currentSong].rewind();
    //  menu.trigger();
    song[currentSong].pause();
    song[currentSong].rewind();
    previous.trigger();
    if ( currentSong == numberofSongs - numberofSongs) {
      println ("Current Song is the first song, ", "Number: " + currentSong); 
      currentSong = numberofSongs = 2;
      println ("Current Song is now the last song, ", "Number: " + currentSong);
    } else {
      currentSong -= 1; // Equivalent code: currentSong = currentSong + 1
      println ("Current Song after the next or back button, but not the first song", "\tNumber: " + currentSong);
    }
  }
  //next song
  if (mouseX>width*10.25/16 && mouseX<width*13.25/16 && mouseY>height*13/16 && mouseY<height*14.95/16) {
    song[currentSong].pause();
    song[currentSong].rewind();
    previous.trigger();
    println ("Current Song is the last song, ", "Number: " + currentSong);
    if (currentSong == numberofSongs - 1 ) {
      println ("Current Song is the last song, ", "Number: " + currentSong); //For Debugging
      currentSong = numberofSongs - numberofSongs; 
      println ("Current Song is now the first song, ", "Number: " + currentSong);
    } else {
      currentSong += 1;
      println ("Current Song after the next or back button, but not the last song", "\tNumber: "+currentSong); //For Debugging
    }
  }
}
