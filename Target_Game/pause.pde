void pause() {
  background(255);
  
  fill(0);
  textSize(75);
  text("Pause" ,400, 100);
  textSize(50);
  text("Click the pause button", 400, 400);
  text("again to resume", 400, 450);
  
  stroke(0);
  fill(255);
  square(50, 50, 75);
  fill(0);
  rect(67, 63, 10, 50);
  rect(98, 63, 10, 50);
}

void pauseClicks() {
  if (dist(mouseX, mouseY, 100, 100)< 75) {
    mode = GAME;
  }
}
