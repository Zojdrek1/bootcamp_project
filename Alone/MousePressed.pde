
void mousePressed() {
  if (overRect(int(startGameBtn.x-textWidth(startGameBtn.btnTxt)/2), startGameBtn.y, textWidth(startGameBtn.btnTxt), textAscent() + textDescent())) {
    GameStart = true;
  }

  if (overRect(int(exitGameBtn.x-textWidth(exitGameBtn.btnTxt)/2), exitGameBtn.y, textWidth(exitGameBtn.btnTxt), textAscent() + textDescent())) {
    exit();
  }

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
