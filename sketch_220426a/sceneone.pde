PImage sprite, City;

PImage[] spritearray = new PImage[8];//create array of 8 sprite poses

int pose = 0;

int offset = 0;

void sceneone(int framecount) {



  frameRate(60); //specifies the number of frames to be displayed each second

  sprite = loadImage("sprite.png");//loads the spritesheet
  City = loadImage("City.png");//loads the background


  for (int f = 0; f < 8; f++)//this gets each poseividual pose from the spritesheet
  {
    spritearray[f] = sprite.get(f*sprite.width/8, 0, sprite.width/8, sprite.height);
  }

  image(City, -offset, 0); //makes the background scroll to the left instead of right
  image(City, City.width-offset, 0);

  image(spritearray[pose], 100, 100);//places the sprite poses at the given co-ordinates
  pose = (pose + 1) % 8;//scrolls through the sprites incrementing it by 1
  offset = (offset + 5) % City.width;//pace of which the background moves
}
