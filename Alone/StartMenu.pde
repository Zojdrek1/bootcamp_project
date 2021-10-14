TxtBtn startGameBtn;
TxtBtn exitGameBtn;

boolean soundPlaying = false;
boolean soundPlaying2 = false;

void BtnAnimationStartMenu(TxtBtn btn) {
  if (overRect(int(btn.x-textWidth(btn.btnTxt)/2), btn.y, textWidth(btn.btnTxt), textAscent() + textDescent())) {
    rect(width*0.25, btn.y, 40, 10);
  }
}

void StartMenu() {
  textSize(50);
  text("-= ALONE =-", width/2, 80);

  startGameBtn = new TxtBtn("Start Game", width/2, height/3);
  startGameBtn.draw();
  BtnAnimationStartMenu(startGameBtn);

  exitGameBtn = new TxtBtn("Exit", width/2, height/2);
  exitGameBtn.draw();
  BtnAnimationStartMenu(exitGameBtn);
}
