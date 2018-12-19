/* println ("Current Song before the next or back button, ", "Number: "+currentSong); //For Debugging
  if (key == 'n' || key == 'N') { //Next Button to Console
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1 ) {
        println ("Current Song is the last song, ", "Number: " + currentSong); //For Debugging
        currentSong = numberOfSongs - numberOfSongs;
        println ("Current Song is now the first song, ", "Number: " + currentSong); //For Debugging
      } else {
        currentSong += 1; // Equivalent code: currentSong = currentSong + 1
        println ("Current Song after the next or back button, but not the last song", "\tNumber: "+currentSong); //For Debugging
      }
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1 ) {
        println ("Current Song is the last song, ", "Number: " + currentSong); //For Debugging
        currentSong = numberOfSongs - numberOfSongs;
        println ("Current Song is now the first song or song, ", "Number: " + currentSong); //For DebuggingcurrentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong += 1; // Equivalent code: currentSong = currentSong + 1
        println ("Current Song after the next or back button, but not the last song, ", "Number: " + currentSong); //For Debugging
      }
    }
  }

  if (key == 'p' || key == 'P') {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }
}
void musicPlayerGUI_Setup() {
   //Media
  //file icon
  
  //menu


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
  //rect

  triangle (width*7/16,height*15/16,width*7/16,height*13/16,width*12/16,height*14/16);
  
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
*/
