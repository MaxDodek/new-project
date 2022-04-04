void game () {
  theme.pause();
  main.play();
  //visuals
  background(black);


  //pause button
  tactile(100, 100, 100, 50); //why is it not working???
  stroke(0);
  fill(red);
  rect(100, 100, 100,50);
  fill(black);
  text("Pause", 100, 100);


  //score
  fill(red);
  strokeWeight(3);
  stroke(black);
  text("Score:" + score, width/2, 50);// quotation puts in word score. + score, adds in what the score is
  text("Lives:" + lives, width/2, 100);// quotation puts in word score. + score, adds in what the score is


  //display target
  fill(red);
  stroke(red);
  circle(x, y, d);


  //moving
  x=x +vx;
  y=y+vy;


  if (x < d/2||x> width-d/2) {//|| = or
    vx =vx * -1;
  }

  if (y<d/2||y>height-d/2) {
    vy=vy*-1;
  }
}




void gameClicks () {
  if (dist(mouseX, mouseY, x, y)<100) {
    score =score +1; // Why does scoring and lives not restart at end
    coin.rewind();
    coin.play();
    }else if (dist(mouseX,mouseY,100,100)<50){//why won't it work fully with rect???
  mode=PAUSE;
} else {
    lives = lives -1;
    bump.rewind();
    bump.play();
  }

  if (lives ==0) { // don't need braces if this is only on one single line
    mode = GAMEOVER;
    score =0;
    lives=3;
    gameover.rewind();
    gameover.play();
    theme.rewind();
  }
}
