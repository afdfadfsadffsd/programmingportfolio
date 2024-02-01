class Button {
  // Button location and size
  float x;
  float y;
  float w;
  float h;
  // Is the button on or off?
  boolean on, isNum;
  char val;
  color c1  ;
  
  // Constructor initializes all variables
  Button(float tempX, float tempY, float tempW, float tempH,char val,color c1, boolean isNum) {
    x  = tempX;
    y  = tempY;
    w  = tempW;
    h  = tempH;
    on = false;  // Button always starts as off
    this.val = val;
    this.c1 = c1;  
    this.isNum = isNum;
  }

  void display() {
    rectMode(CENTER);
    if (on) {
      fill(200);
    } else {
      fill(c1);
    }
    rect(x, y, w, h,7);
    fill(0);
    textSize(21);
    textAlign(CENTER);
    text(val, x, y+5);
  }
  
  void hover() {
    if (mouseX> x-w/2 && mouseX <x+w/2 && mouseY > y-h/2 && mouseY<y+h/2) {
      on=true;
    } else {
      on=false;
    }
  }
}
