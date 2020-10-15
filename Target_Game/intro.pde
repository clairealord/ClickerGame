void intro() {
  theme.play();

  background(255);
  
  fill(0);
  textSize(75);
  text("The Coolest Game", 400, 200);
  text("You'll Ever Play", 400, 275);
  textSize(12);
  text("It really is don't judge me. I worked really hard on it. Just look it has AMAZING graphics!", 400, 350);
  
  tactile(300, 500, 200, 100);
  fill(255);
  rect(300, 500, 200, 100);
  fill(0);
  textSize(50);
  text("START", 300, 500, 200, 100);
  
  tactile(325, 650, 150, 75);
  fill(255);
  rect(325, 650, 150, 75);
  fill(0);
  textSize(25);
  text("OPTIONS", 400, 685);
}

void introClicks() {
  println("?");
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
    mode = GAME;
    println("!");
  }
  if (mouseX > 325 && mouseX < 650 && mouseY > 650 && mouseY < 725) {
    mode = OPTIONS;
    println("@");
  }
}
