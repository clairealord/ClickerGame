void options() {
  background(255);

  fill(0);
  textSize(60);
  text("Options", 400, 100);

tactile(200, 500, 200, 700);
  strokeWeight(5);
  line(200, 500, 200, 700);
  circle(200, sliderY, 20);

  //among us buttons ----------
  fill(255);
  stroke(0);
  square(100, 250, 125);
  image(red, 100, 250, 125, 125);

  square(340, 250, 125);
  image(pink, 340, 250, 125, 125);

  square(580, 250, 125);
  image(blue, 580, 250, 125, 125);

  //back button ----------
  tactile(600, 675, 150, 60);
  textSize(50);
  rect(600, 675, 150, 60);
  fill(0);
  text("Back" , 675, 700);

  //target size picker ----------
  stroke(0);
  fill(255);
  circle (450, 600, thickness*10);
  
  
}

void optionsClicks() {
  if (mouseX > 600 && mouseX < 750 && mouseY > 675 && mouseY < 735) {
    mode = INTRO;
  }
}

void mouseDragged() {
  controlSlider();

  if (redOn == true) {
    image(red, 450, 600, thickness, thickness);
  } else if (pinkOn == true) {
      image(pink, 450, 600, thickness, thickness);
    } else if (blueOn == true) {
    image(blue, 450, 600, thickness, thickness);
  }
}

void controlSlider() {
  if (mouseX > 180 && mouseX < 220 && mouseY > 500 && mouseY < 700) 
    sliderY = mouseY;
}
