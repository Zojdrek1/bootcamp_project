int level = 0;

public interface Test {
  void test();
}

// Spawn & Next Level Btn
int[] spawnsX = {47, 47, 370, 370, 370, 270, 270, -50};
int[] spawnsY = {520, 520, 520, 520, 520, 520, 520, 2000};
StartNext nextLvlRect;

// Ground - All Levels
Platform ground;

// Level 1 - Platforms
Platform plat_l1_1;


Platform[] level_platforms;

void NextLevelCol() {
  if (((nextLvlRect.x > player.x && nextLvlRect.x < player.x+player.w) && ((nextLvlRect.y > player.y && nextLvlRect.y < player.y+player.h))) || ((nextLvlRect.x+25 > player.x && nextLvlRect.x < player.x+player.w) && ((nextLvlRect.y+25 > player.y && nextLvlRect.y < player.y+player.h)))) {
    player.x = spawnsX[level];
    player.y = spawnsY[level];
    level += 1;
    return;
  }
}

void DrawPlatforms(int[] level_cords) {
  int b = 1;
  for (int i=0; i<level_cords.length; i+=2) {
    level_platforms[b] = new Platform(level_cords[i], level_cords[i+1], 100, 20, ("PLAT_"+b));
    b+=1;
  }

  for (Platform i : level_platforms) {
    i.draw();
  }
}

void Levels() {
  if (level == 0) {
    player.x = spawnsX[level];
    player.y = spawnsY[level];
    level += 1;
  }
  if (level == 1) {
    nextLvlRect = new StartNext("end", 530+25+12, 59-28);
    nextLvlRect.draw();

    fill(#ffffff);
    int[] level_cords = {94, 520, 444, 390, 206, 267, 601, 204, 300, 476, 43, 326, 290, 367, 528, 306, 403, 221, 159, 186, 50, 248, 358, 140, 635, 120, 61, 124, 251, 95, 530, 59};
    level_platforms = new Platform[level_cords.length/2 +1];

    // Ground
    level_platforms[0] = new Platform(-10, height-50, width+10, 50, "GROUND");

    DrawPlatforms(level_cords);

    NextLevelCol();
  }

  if (level == 2) {
    nextLvlRect = new StartNext("end", 567+25+12, 104-28);
    nextLvlRect.draw();

    fill(#ffffff);
    int[] level_cords = {224, 490, 461, 463, 667, 397, 504, 313, 317, 283, 105, 249, 325, 171, 567, 104};
    level_platforms = new Platform[level_cords.length/2 +1];

    // Ground
    level_platforms[0] = new Platform(-10, height-50, width+10, 50, "GROUND");

    DrawPlatforms(level_cords);

    NextLevelCol();
  }

  if (level == 3) {
    nextLvlRect = new StartNext("end", 375+25+12, 66-28);
    nextLvlRect.draw();

    fill(#ffffff);
    int[] level_cords = {162, 509, 623, 476, 384, 415, 197, 341, 566, 346, 382, 262, 161, 228, 560, 234, 372, 154, 111, 103, 619, 113, 375, 66};
    level_platforms = new Platform[level_cords.length/2 +1];

    // Ground
    level_platforms[0] = new Platform(-10, height-50, width+10, 50, "GROUND");

    DrawPlatforms(level_cords);

    NextLevelCol();
  }
  if (level == 4) {
    nextLvlRect = new StartNext("end", 111+25+12, 178-28);
    nextLvlRect.draw();

    fill(#ffffff);
    int[] level_cords = {243, 474, 338, 421, 437, 374, 561, 331, 337, 241, 447, 280, 222, 206, 111, 178};
    level_platforms = new Platform[level_cords.length/2 +1];

    // Ground
    level_platforms[0] = new Platform(-10, height-50, width+10, 50, "GROUND");

    DrawPlatforms(level_cords);

    NextLevelCol();
  }

  if (level == 5) {
    nextLvlRect = new StartNext("end", 657+25+12, 253-28);
    nextLvlRect.draw();

    fill(#ffffff);
    int[] level_cords = {465, 501, 450, 433, 408, 383, 362, 335, 324, 288, 295, 235, 204, 163, 134, 213, 71, 286, 393, 154, 527, 191, 657, 253};
    level_platforms = new Platform[level_cords.length/2 +1];

    // Ground
    level_platforms[0] = new Platform(-10, height-50, width+10, 50, "GROUND");

    DrawPlatforms(level_cords);

    NextLevelCol();
  }

  if (level == 6) {
    nextLvlRect = new StartNext("end", 245+25+12, 72-28);
    nextLvlRect.draw();

    fill(#ffffff);
    int[] level_cords = {79, 512, 315, 479, 601, 453, 106, 386, 378, 384, 657, 347, 204, 290, 458, 285, 657, 240, 39, 224, 294, 219, 523, 180, 683, 117, 138, 148, 380, 123, 553, 66, 245, 72, 20, 103};
    level_platforms = new Platform[level_cords.length/2 +1];

    // Ground
    level_platforms[0] = new Platform(-10, height-50, width+10, 50, "GROUND");

    DrawPlatforms(level_cords);

    NextLevelCol();
  }
  
  if (level == 7) {
    GameFinish = true;
    timeGot = time;
  }
}
