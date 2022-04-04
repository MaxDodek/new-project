void pause () {
  background(black);

fill(red);
textSize(75);
text("Paused",400,400);

  tactile(400, 550, 200, 100);
  fill(red);
  rect(400, 550, 200, 100);
  fill (black);
  textSize(35);
  textAlign(CENTER);
  text("Back to Game", 400, 550);
}


void pauseClicks () {
  if (dist(mouseX,mouseY,400,550)<50){ // why not working always for full rectangle???
    mode=GAME;
    }
}
