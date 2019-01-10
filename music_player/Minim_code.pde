import ddf.minim.*;
import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;
//song code
Minim minim;
int numberofSongs = 3;
AudioPlayer[] song = new AudioPlayer[numberofSongs];
int currentSong = numberofSongs - numberofSongs;
boolean playbutton = false;
//sound effects
//AudioSample pause;
//AudioSample menu;
//AudioSample play;
void MusicSetup() {

  minim = new Minim (this);
  song[0] =  minim.loadFile("Judgement - Devilman Crybaby OST.mp3");
  song [1] = minim.loadFile("Castlevania - Bloody Tears Acapella.mp3");
  song [2] = minim.loadFile("DARK SOULS II - Sir Alonne (Piano Violin Version) (mp3cut.net).mp3");
  //pause = minim.loadSample("pause-sound.mp3");
  //menu = minim.loadSample("Men-effect (mp3cut.net).mp3");
  //play = minim.loadSample("start-sound-effect (killer queen detoantion sound).mp3");
}
void MusicDraw() {

  ellipse(width*1/8, height*11/16, song[0].left.get(currentSong)*100, 110);
  ellipse(width*7/8, height*11/16, song[0].left.get(currentSong)*100, 110);
  ellipse(width*1/8, height*11/16, song[1].left.get(currentSong)*100, 110);
  ellipse(width*7/8, height*11/16, song[1].left.get(currentSong)*100, 110);
  ellipse(width*1/8, height*11/16, song[2].left.get(currentSong)*100, 110);
  ellipse(width*7/8, height*11/16, song[2].left.get(currentSong)*100, 110);
  rect (width*0.5/32, height*0.5/32, width*1/32, height*3/32);
}
void MusicMousePressed() {
  println ("Mousex:", mouseX, "\tMouseY:", mouseY);
  if (mouseX>width*3/8 && mouseX<width*5/8 && mouseY>height*3.25/8 && mouseY<height*5/8 ) {
    if (song[1].isPlaying()) {
      song[1].pause();
      fill(#87B99B);
      ellipse(width*1/2, height*1/2, width*2.5/8, height*2/8);
      fill(#F7F7F7);
    } else {
      song[1].play();
      fill(#C95D5D);
      ellipse(width*1/2, height*1/2, width*2.5/8, height*2/8);
      fill(#F7F7F7);
    }
  }
  if (mouseX>width*0.5/32 && mouseX<width*1.5/32 && mouseY>height*0.5/32 && mouseY<height*3.5/32) {
    println ("pressed");
 //  menu.trigger();
  }
}

/*
if ( currentSong == numberofSongs - numberofSongs ) {
 println ("Current Song is the first song, ", "Number: " + currentSong); 
 currentSong = numberofSongs - 1;
 println ("Current Song is now the last song, ", "Number: " + currentSong);
 } else {
 currentSong -= 1; // Equivalent code: currentSong = currentSong + 1
 println ("Current Song after the next or back button, but not the first song", "\tNumber: " + currentSong);
 */

/*
if (mouseX>width*3/8 && mouseX<width*5/8 && mouseY>height*3.25 && mouseY<height*5/8) { //Play
 playbutton = true;
 song[currentSong].pause();
 } else if (playbutton) {
 playbutton = !playbutton;
 song[currentSong].rewind();
 song[currentSong].play();
 } else {
 song[currentSong].play();
 }
 */
