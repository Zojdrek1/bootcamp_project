import java.util.ArrayList;

int x;
int y;
DrawPlatform newP;
ArrayList<Integer> cords = new ArrayList<Integer>();
// println("level_platforms[1] = new Platform("+mouseX+","+mouseY+", 100, 20, PLATNUM);");

void setup() {
  size(800, 600);
  background(#000000);
}


void draw() {
  fill(#ffffff);
  rect(-10, height-50, width+10, 50);
  
  
  rect(0, 0, 50, 50);
  fill(#ff0000);
  rect(60, 0, 50, 50);
}

void mousePressed() {
  if (overRect(50, 0, 50, 50)) {
    background(#000000);
  } else {
    if (!overRect(0, 0, 50, 50)) {
      x = int(mouseX);
      y = int(mouseY);

      newP = new DrawPlatform(mouseX, mouseY);
      cords.add(x);
      cords.add(y);

      newP.draw();
    } else {
      println(cords);
    }
  }
}
