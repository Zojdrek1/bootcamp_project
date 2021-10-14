class Platform {
  int x;
  int y;
  int plat_w;
  int plat_h;
  String debugNum;
  
  Platform(int in_x, int in_y, int in_w, int in_h, String debug_in) {
    x = in_x;
    y = in_y;
    plat_w = in_w;
    plat_h = in_h;
    debugNum = debug_in;
  }
  
  void draw() {
    rect(x, y, plat_w, plat_h);
  }
  

}
