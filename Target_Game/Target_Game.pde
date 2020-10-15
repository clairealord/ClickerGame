//Claire Lord
//Block 1-2 A
//Oct. 9, 2020

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//MODE VARIABLES --------------------------------------------------
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;

//TARGET VARIABLES --------------------------------------------------
float x, y, d;
float vx, vy; //target velocity
float sliderY;
int score, lives;
int highscore;

boolean redOn;
boolean pinkOn;
boolean blueOn;

float thickness;

//PICTURE VARIABLES ----------------------------------------
PImage red;
PImage pink;
PImage blue;
int selectedImage;

//COLOR PALLETTE --------------------------------------------------

//MINIM VARIABLES -------------------------------------------------
Minim minim;
AudioPlayer theme, coin, bump, gameover;

void setup() { //unexpected token is almost always missing brace
  size(800, 800);
  textAlign(CENTER, CENTER);
  //rectMode(CENTER);
  
  mode = INTRO;
  
  //TARGET INITIALIZATION ------------------------------------------
  x = width/2;
  y = height/2;
  d = 100;
  vx = random(-5, 5);
  vy = random(-5, 5);
  score = 0;
  lives = 3;
  highscore = 0;
  
  //MINIM INITIALIZATION --------------------------------------------------
  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
  
  //PICTURE INITIALIZATION ----------------------------------------
  red = loadImage("amongred.png");
  pink = loadImage("amongpink.png");
  blue = loadImage("amongblue.png");
  
  sliderY = 500;
  thickness = 5;
  
  reset();
}

void draw() {

  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  }else if (mode == OPTIONS) {
    options();
  } else {
    println (" Error: Mode = " + mode);
  }
  
  thickness = map(500, sliderY, 20, 10, 40);
}
