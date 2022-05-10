//This sketch consists of using arrays with 8 sprite poses and a scrolling background selfmade, and credits
//Created by Ismail Mazhar - Student ID: 21029252
import processing.sound.*;//allows the use of music/sound

SoundFile Music;
String[] creditroll;//array of credits

void setup() {
  size(700, 700 );
  surface.setTitle("STUDENT ID: 21029252"); //adds header to the window
  creditroll = loadStrings("credits.txt");//gets string from text file to array
  textSize(15);//determines the font of the text
  Music = new SoundFile(this, "sound.mp3");//plays the background music
  Music.play();
}


void draw() {

  if (frameCount < 250)//if the framecount is lower than 250 scene one will carry on playing, if it reaches 250 it will play scene two


    sceneone(frameCount);




  else

    scenetwo(frameCount-250);
}
