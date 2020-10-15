void game() {
  background(203, 203, 203);
  
  textSize(40);
  fill(0);
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 90);
  
  //visuals
  
  //pause button
  stroke(0);
  fill(255);
  square(50, 50, 75);
  fill(0);
  rect(67, 63, 10, 50);
  rect(98, 63, 10, 50);

  //display target
  fill(255);
  stroke(0);
  strokeWeight(5);
  circle(x, y, thickness*10);

  //moving
  x = x + vx;
  y = y + vy;

  //bouncing
  if ( x < d/2 || x > width-d/2) {
    vx = vx * -1;
  }
  if(y < d/2 || y > height-d/2) {
    vy = vy * -1;
  }
}
void gameClicks() {
  if (dist(mouseX, mouseY, x, y) <d/2) {
    vx = vx * 1.1;
    vy = vy * 1.1;
    coin.rewind();
    coin.play();
    score = score +1;
  } else if (dist(mouseX, mouseY, 100, 100)< 50) {
    mode = PAUSE;
  } else {
    bump.rewind();
    bump.play();
    lives = lives -1;
    if (lives == 0) mode = GAMEOVER;
  }
}
