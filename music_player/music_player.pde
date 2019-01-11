

void setup () {
  size(500, 600);
  background (#8B6F6F);
  println("Start of Console");

MusicPlayerButtons();
MusicSetup();
}

void draw() {

MusicDraw();

}

void mouseClicked() { 

MusicPlayerButtons();
MusicMousePressed();
}
