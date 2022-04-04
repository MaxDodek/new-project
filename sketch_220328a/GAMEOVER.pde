void gameover() {
  main.pause();
  theme.play();
  
  background(red);
  
  fill(black);
  textSize(100);
  text("Game Over", 400,400);
  
  fill(black);
  tactile(400, 550, 200, 100); 
  rect(400, 550, 200, 100);
  
  fill(red);
  textSize(35);
  textAlign(CENTER);
  text("Continue...", 400, 565);
}

void gameoverClicks () {
  if (mouseX>300 && mouseX <500 && mouseY>500 && mouseY <600) { // why not working for full rectangle???
    mode=INTRO;
  }  
}


  
