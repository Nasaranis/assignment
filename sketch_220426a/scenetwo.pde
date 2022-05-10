void scenetwo(int framecount) {


  if (Music.isPlaying()) {//if music is playing once scene one is over then it will stop playing music
    Music.stop();
  }

  frameRate(60);

  background(#0070FF);//blue background, colour picked using: tools - color selector

  fill(#000205);//black text, colour picked using: tools - color selector

  textAlign(CENTER, CENTER);//alligns the text at the end credits to the centre

  for (int d = 0; d < creditroll.length; d++)

    text(creditroll[d], width/2, 300 - framecount + 85*d);//centers the texts width and makes the text sroll upwards
}
