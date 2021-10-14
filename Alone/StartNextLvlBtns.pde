class StartNext {
  String option;
  
  int x;
  int y;
  

  StartNext(String opt, int in_x, int in_y) {
    option = opt;
    x = in_x;
    y= in_y;
  }
  
  void draw() {
    if (option == "start") {fill(#000000);}
    if (option == "end") {fill(#FFF703);}
    rect(x, y, 25, 25);
    
  }


}
