void gameover() {
  background(255, 0, 0);
  text("GAME OVER", 400, 400);
  
  if (score > highscore);{
  text("High Score: " +score, width/2, 600);
  }
  theme.pause();
  gameover.play();
}

void gameoverClicks() {
  reset();
  mode = INTRO;
}
