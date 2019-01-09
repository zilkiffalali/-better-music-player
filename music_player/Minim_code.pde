import ddf.minim.*;
import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

Minim minim;
int numberofSongs = 3;
AudioPlayer[] song = new AudioPlayer[numberofSongs];
int currentSong = numberofSongs - numberofSongs;
boolean playbutton = false;

void MusicSetup() {
  minim = new Minim (this);
  song[0] = minim.loadFile("Judgement - Devilman Crybaby OST.mp3");
  song [1] = minim.loadFile("Castlevania - Bloody Tears Acapella.mp3");
  song [2] = minim.loadFile("DARK SOULS II - Sir Alonne (Piano Violin Version) (mp3cut.net).mp3");
  song[2].play();
}
void MusicDraw() {

  ellipse(width*1/8, height*11/16, song[0].left.get(currentSong)*100, 110);
  ellipse(width*7/8, height*11/16, song[0].left.get(currentSong)*100, 110);
  ellipse(width*1/8, height*11/16, song[1].left.get(currentSong)*100, 110);
  ellipse(width*7/8, height*11/16, song[1].left.get(currentSong)*100, 110);
  ellipse(width*1/8, height*11/16, song[2].left.get(currentSong)*100, 110);
  ellipse(width*7/8, height*11/16, song[2].left.get(currentSong)*100, 110);
  rect (width*3/8, height*3.25/8, width*2/8, height*1.75/8);
}
void MusicMousePressed() {

  if (mouseX>width*3/8 && mouseX<width*5/8 && mouseY>height*3.25 && mouseY<height*5/8 ) {
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      { else {}

      if (song[currentSong].isPlaying() ) {
      }
    }
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
