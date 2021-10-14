boolean debugMode = true;

//import processing.sound.*;
import java.util.ArrayList;

//Font file;
PFont font;


// Player
Player player;


// Floor Platform Variables
float groundX = 0;
float groundY; // Value assigned in setup()
float groundWidth; // Value assigned in setup()
float groundHeight = 40;

// Physics but not really
int playerJumpRepeat = 1;
int playerJumpForce = 100;
float jumpStateFrameCount = -1;
float fallFrameDelay = 12.0; // Default 15.0 Frames
int playerRunForce = 8;
int gravityStrength = 7;

boolean GameStart = false;

int time;


void setup() {
  size(800, 600);
  background(#000000);
  font = loadFont("Bahnschrift-48.vlw");
  textFont(font, 128);

  // Sound
  //file = new SoundFile(this, "hover.mp3");

  // Floor Platform Variable Assignment
  groundY = height-groundHeight;
  groundWidth = width+1;

  // Player
  player = new Player(spawnsX[level], spawnsY[level]);
}



void draw() {
  background(#000000);

  

  if (!GameStart) {
    StartMenu();
  } else {
    // Time
    time = frameCount / 60;
    textAlign(LEFT);
    text(("Level: "+level+"  -  Time: "+time), 80, 30);
    Levels();

    player.draw();

    for (int i=0; i<10; i++) {
      PlayerJump();
    }

    for (int i=0; i<gravityStrength; i++) {
      Gravity();
    }

    for (int i=0; i<playerRunForce; i++) {
      PlayerMovement();
    }
  }
}
