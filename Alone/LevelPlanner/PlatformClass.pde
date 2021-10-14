class DrawPlatform {
  float x;
  float y;
  
  DrawPlatform(float in_x, float in_y) {
    x = in_x;
    y = in_y;
  }
  
  
  void draw() {
    rect(x, y, 100, 20);
  
  }
}
