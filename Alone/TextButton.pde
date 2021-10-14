class TxtBtn {
  String btnTxt;
  int x;
  int y;


  TxtBtn(String inTxt, int inX, int inY) {
    btnTxt = inTxt;
    x = inX;
    y = inY;
  }

  void draw() {
    fill(#ffffff);
    textSize(25);
    textAlign(CENTER, CENTER);
    text(btnTxt, x, y);
  }
}
