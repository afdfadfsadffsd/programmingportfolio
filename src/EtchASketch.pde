// Sreeram Patcha | Sept 19, 2023 | Computer Programming 2B
int x, y; // Global Variables

void setup() {
  size(400, 400);
  frameRate(10);
  // Set start coords
  x = 10;
  y = 10;
}

void draw() {
  //background(127);
  //fill(255);
  //drawName();
  //noLoop();
}

// Algorithm for your first name
void drawName() {
  moveRight(150);
  moveLeft(150);
  moveDown(100);
  moveRight(150);
  moveDown(100);
  moveLeft(150);
  noStroke();
  moveRight(225);
  stroke(0);
  moveUp(200);
  moveRight(125);
  moveDown(100);
  moveLeft(125);
}

//Method to draw right line
void moveRight(int rep) {
  for (int i=0; i<rep; i+=1) {
    point(x+i, y);
  }
  x= x+rep;
}

void moveDown(int rep) {
  for (int i=0; i < rep; i+=1) {
    point(x, y+i);
  }
  y=y+rep;
}

void moveUp(int rep) {
  for (int i = 0; i < rep; i+=1) {
    point(x, y-i);
  }
  y=y-rep;
}

void moveLeft(int rep) {
  for (int i = 0; i<rep; i+=1) {
    point(x-i, y);
  }
  x=x-rep;
}
void moveUpLeft(int rep) {
  for (int i = 0; i<rep; i+=1) {
    point(x-i, y-i);
  }
  x=x-rep;
  y-=rep;
}
void moveDownLeft(int rep) {
  for (int i = 0; i<rep; i+=1) {
    point(x-i, y+i);
  }
  x=x-rep;
  y+=rep;
}
void moveUpRight(int rep) {
  for (int i = 0; i<rep; i+=1) {
    point(x+i, y-i);
  }
  x=x+rep;
  y-=rep;
}
void moveDownRight(int rep) {
  for (int i = 0; i<rep; i+=1) {
    point(x+i, y+i);
  }
  x=x+rep;
  y+=rep;
}
void mousePressed() {
  saveFrame("line-######.png");
}
/**
void keyPressed() {
  if (key == CODED) {
    if (keyCode==RIGHT) {
      moveRight(5);
    } else if (keyCode==LEFT) {
      moveLeft(5);
    } else if (keyCode==UP) {
      moveUp(5);
    } else if (keyCode==DOWN) {
      moveDown(5);
    }
  }
}
/**/
void keyPressed() {
  if(key == 'w' || key == 'W') {
    moveUp(5);
  } else if(key == 'a' || key == 'A') {
    moveLeft(5);
  } else if(key == 's' || key == 'S') {
    moveDown(5);
  } else if(key == 'd' || key == 'D') {
    moveRight(5);
  } else if(key == 'q' || key == 'Q') {
    moveUpLeft(5);
  } else if(key == 'r' || key == 'R') {
    moveUpRight(5);
  } else if(key == 'c' || key == 'C') {
    moveDownRight(5);
  } else if(key == 'z' || key == 'Z') {
    moveDownLeft(5);
  }
}
