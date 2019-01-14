import ddf.minim.*;
import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;
//song code
Minim minim;
int numberofSongs = 3;
AudioPlayer[] song = new AudioPlayer[3];
int currentSong = numberofSongs - numberofSongs;
boolean playbutton = false;
boolean nextsong = false;
//sound effects
AudioSample pause;
AudioSample menu;
AudioSample play ;

void MusicSetup() {

  minim = new Minim (this);
  song[0] =  minim.loadFile("Judgement - Devilman Crybaby OST.mp3");
  song [1] = minim.loadFile("Castlevania - Bloody Tears Acapella.mp3");
  song [2] = minim.loadFile("DARK SOULS II - Sir Alonne (Piano Violin Version) (mp3cut.net).mp3");
  pause = minim.loadSample("pause-sound.mp3");
  menu = minim.loadSample("Men-effect (mp3cut.net).mp3");
  play = minim.loadSample("start.mp3");
  if (song[currentSong].isPlaying()) {
    song[currentSong].loop();
  } else {
  }
}
void MusicDraw() {

  ellipse(width*1/8, height*11/16, song[0].left.get(currentSong)*100, 110);
  ellipse(width*7/8, height*11/16, song[0].left.get(currentSong)*100, 110);
  ellipse(width*1/8, height*11/16, song[1].left.get(currentSong)*100, 110);
  ellipse(width*7/8, height*11/16, song[1].left.get(currentSong)*100, 110);
  ellipse(width*1/8, height*11/16, song[2].left.get(currentSong)*100, 110);
  ellipse(width*7/8, height*11/16, song[2].left.get(currentSong)*100, 110);
  rect (width*0.5/32, height*0.5/32, width*1/32, height*3/32);
  //rect (width*10.25/16, height*13/16, width*3/16, height*1.95/16);//next song button
}

void MusicMousePressed() {
  println ("Mousex:", mouseX, "\tMouseY:", mouseY);
  if (mouseX>width*3/8 && mouseX<width*5/8 && mouseY>height*3.25/8 && mouseY<height*5/8 ) {
   menu.trigger();
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      fill(#87B99B);
      ellipse(width*1/2, height*1/2, width*2.5/8, height*2/8);
      fill(#F7F7F7);
     } else if ( song[currentSong].position() == song[currentSong].length() ) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
      fill(#C95D5D);
      ellipse(width*1/2, height*1/2, width*2.5/8, height*2/8);
      fill(#F7F7F7);
    }
  }
  //menu
  if (mouseX>width*0.5/32 && mouseX<width*1.5/32 && mouseY>height*0.5/32 && mouseY<height*3.5/32) {
    menu.trigger();
    if ( menu == null ) println("Didn't get menu!");
  }

  //previous song
  if (mouseX>width*2.25/16 && mouseX<width*5.25/16 && mouseY>height*13/16 && mouseY<height*14.95/16) {
    println ("pressed");
    //song[currentSong].rewind();
    //  menu.trigger();
    if ( currentSong == numberofSongs - numberofSongs ) {
      println ("Current Song is the first song, ", "Number: " + currentSong); 
      currentSong = numberofSongs = 3;
      println ("Current Song is now the last song, ", "Number: " + currentSong);
    } else {
      currentSong -= 1; // Equivalent code: currentSong = currentSong + 1
      println ("Current Song after the next or back button, but not the first song", "\tNumber: " + currentSong);
    }
  }
  //next song
  if (mouseX>width*10.25/16 && mouseX<width*13.25/16 && mouseY>height*13/16 && mouseY<height*14.95/16) {
    println ("Current Song is the last song, ", "Number: " + currentSong);
    if (currentSong == numberofSongs -1) {
      println ("Current Song is the last song, ", "Number: " + currentSong); //For Debugging
      currentSong = numberofSongs - numberofSongs;
      println ("Current Song is now the first song, ", "Number: " + currentSong);
    } else {
      currentSong += 1; // Equivalent code: currentSong = currentSong + 1
      println ("Current Song after the next or back button, but not the last song", "\tNumber: "+currentSong); //For Debugging
    }
  }
}
