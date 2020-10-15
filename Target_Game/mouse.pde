void mouseReleased() {
    if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  }else if (mode == OPTIONS) {
    optionsClicks();
  }
  controlSlider();
  
  if (mouseX > 100 && mouseX < 225 && mouseY > 250 && mouseY < 375)
  redOn = !redOn;
}
