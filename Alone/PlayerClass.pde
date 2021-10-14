class Player {
  // Player Variables init
  float x;
  float y;
  float w = 30; // Width
  float h = 30; // Height
  

  // --> Player Movement Variables
  float jumpStateFrameCount = -1;
  float fallFrameDelay = 15.0; // Default 15.0 Frames
  boolean notGrounded = true;
  
  
  Player(float in_x, float in_y) {
    x = in_x;
    y = in_y;
  }
  
  void draw() {
    rect(x, y, w, h);
  }
  
 
}
