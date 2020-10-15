
void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(250, 114, 180);
  } else {
    stroke(0);
  }
}

void reset() {
  //target
  x = width/2;
  y = height/2;
  d = 200;
  vx = random(-5, 5);
  vy = random(-5, 5);
  
  //game initialization
  score = 0;
  lives = 3;

}
