boolean grounded(Platform[] platforms) {
  for (Platform i : platforms) {
    if (player.y+player.h == i.y && (player.x+player.w >= i.x && player.x <= i.x+i.plat_w)) {
      return true;
    }
  }

  return false;
};

boolean headSpace() {
  for (Platform i : level_platforms) {
    if ((player.x > i.x && player.x < i.x+i.plat_w) || (player.x+player.w > i.x && player.x+player.w < i.x+i.plat_w)) {
      if (player.y == i.y+i.plat_h) {
        return false;
      }
    }
  }
  return true;
};

boolean sideNotHitRight() {
  for (Platform i : level_platforms) {

    //if (player.y+player.h >= i.y && player.y+player.h <= i.y+i.plat_h) {

    if (player.x+player.w == i.x) {
      for (float a = player.y; a<player.y+player.h; a++) {
        if (a > i.y && a < i.y+i.plat_h) {
          return false;
        }
      }
    }
  }

  return true;
}


boolean sideNotHitLeft() {
  for (Platform i : level_platforms) {

    //if (player.y+player.h >= i.y && player.y+player.h <= i.y+i.plat_h) {

    if (player.x == i.x+i.plat_w) {
      for (float a = player.y; a<player.y+player.h; a++) {
        if (a > i.y && a < i.y+i.plat_h) {
          return false;
        }
      }
    }
  }

  return true;
}


boolean leftMove = false;
boolean rightMove = false;
boolean jumpMove = false;
boolean jumpState = false;

void keyPressed() {
  // Player Movement Boolean Update
  // --> Jump
  if (key == 'w' || key == 'W') {
    jumpMove = true;
    jumpState = true;
    PlayerJump();
  }

  // Left & Right Movement
  if (key == 'a' || key == 'A') {
    leftMove = true;
  }

  if (key == 'd' || key == 'D') {
    rightMove = true;
  }
  
  if (key == ' ') {
    GameStart = true;
    level += 1;
  }
}


void keyReleased() {
  // Player Movement Boolean Update
  // --> Jump
  if (key == 'w' || key == 'W') {
    jumpMove = false;
  }

  // Left & Right Movement
  if (key == 'a' || key == 'A') {
    leftMove = false;
  }

  if (key == 'd' || key == 'D') {
    rightMove = false;
  }
}

void PlayerMovement() {
  if (leftMove && player.x > 0 && sideNotHitLeft()) {
    player.x -= 1;
  }

  if (rightMove && player.x+player.w < width && sideNotHitRight()) {
    player.x += 1;
  }
}

void PlayerJump() {
  if (headSpace()) {
    if (jumpMove && grounded(level_platforms)) {
      if (jumpState) {
        jumpStateFrameCount = frameCount+fallFrameDelay;
        jumpState = false;
      }
    }

    if (frameCount < jumpStateFrameCount) {
      player.y -= 1;
    }
  }
}



void Gravity() {

  if (!grounded(level_platforms) && frameCount > jumpStateFrameCount) {
    player.y += 1;
  }
}
