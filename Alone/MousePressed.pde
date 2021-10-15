
void mousePressed() {
  try {
    if (GameStart && debugMode) {
      for (Platform i : level_platforms) {
        if (overRect(i.x, i.y, i.plat_w, i.plat_h)) {
          println("X: "+i.x+" Y: "+i.y);
        }
      }
    }
  }
  catch(Exception e) {
  
  }
}
