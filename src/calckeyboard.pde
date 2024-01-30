// Sreeram Patcha | Oct 26, 2023 | Computer Programming 1 and 2
Button[] buttons = new Button[23];
String dVal;
String op;
boolean left;
float l, r, result;

void setup() {
  size(210, 250);
  dVal = "0";
  op = "";
  left = true;
  l = 0.0;
  r = 0.0;
  result = 0.0;
  buttons[0] = new Button(45, 225, 70, 30, '0', color(random(0, 200), random(0, 200), random(0, 200)), true);
  buttons[1] = new Button(25, 185, 30, 30, '1', color(random(0, 200), random(0, 200), random(0, 200)), true);
  buttons[2] = new Button(65, 185, 30, 30, '2', color(random(0, 200), random(0, 200), random(0, 200)), true);
  buttons[3] = new Button(105, 185, 30, 30, '3', color(random(0, 200), random(0, 200), random(0, 200)), true);
  buttons[4] = new Button(25, 145, 30, 30, '4', color(random(0, 200), random(0, 200), random(0, 200)), true);
  buttons[5] = new Button(65, 145, 30, 30, '5', color(random(0, 200), random(0, 200), random(0, 200)), true);
  buttons[6] = new Button(105, 145, 30, 30, '6', color(random(0, 200), random(0, 200), random(0, 200)), true);
  buttons[7] = new Button(25, 105, 30, 30, '7', color(random(0, 200), random(0, 200), random(0, 200)), true);
  buttons[8] = new Button(65, 105, 30, 30, '8', color(random(0, 200), random(0, 200), random(0, 200)), true);
  buttons[9] = new Button(105, 105, 30, 30, '9', color(random(0, 200), random(0, 200), random(0, 200)), true);
  buttons[10] = new Button(25, 65, 30, 30, 'C', color(random(0, 200), random(0, 200), random(0, 200)), false);
  buttons[11] = new Button(65, 65, 30, 30, '±', color(random(0, 200), random(0, 200), random(0, 200)), false);
  buttons[12] = new Button(105, 65, 30, 30, '!', color(random(0, 200), random(0, 200), random(0, 200)), false);
  buttons[13] = new Button(145, 65, 30, 30, '%', color(random(0, 200), random(0, 200), random(0, 200)), false);
  buttons[14] = new Button(185, 65, 30, 30, '√', color(random(0, 200), random(0, 200), random(0, 200)), false);
  buttons[15] = new Button(145, 105, 30, 30, '×', color(random(0, 200), random(0, 200), random(0, 200)), false);
  buttons[16] = new Button(185, 105, 30, 30, 'π', color(random(0, 200), random(0, 200), random(0, 200)), false);
  buttons[17] = new Button(185, 145, 30, 30, '²', color(random(0, 200), random(0, 200), random(0, 200)), false);
  buttons[18] = new Button(185, 205, 30, 70, '=', color(random(0, 200), random(0, 200), random(0, 200)), false);
  buttons[19] = new Button(145, 145, 30, 30, '÷', color(random(0, 200), random(0, 200), random(0, 200)), false);
  buttons[20] = new Button(145, 185, 30, 30, '+', color(random(0, 200), random(0, 200), random(0, 200)), false);
  buttons[21] = new Button(145, 225, 30, 30, '-', color(random(0, 200), random(0, 200), random(0, 200)), false);
  buttons[22] = new Button(105, 225, 30, 30, '.', color(random(0, 200), random(0, 200), random(0, 200)), true);
}

void draw() {
  background(256);
  for (int i=0; i<buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover();
  }
  buttons[0].display();
  buttons[0].hover();
  updateDisplay();
}
void keyPressed() {
  println("key:" + key);
  println("keycode" + keyCode);
  if (key == 0 || keyCode == 96 || keyCode == 48) {
    handleEvent("0", true);
  } else if (key == 1 || keyCode == 97 || keyCode == 49) {
    handleEvent("1", true);
  } else if (key == 1 || keyCode == 98 || keyCode == 50) {
    handleEvent("2", true);
  } else if (key == 1 || keyCode == 99 || keyCode == 51) {
    handleEvent("3", true);
  } else if (key == 1 || keyCode == 100 || keyCode == 52) {
    handleEvent("4", true);
  } else if (key == 1 || keyCode == 101 || keyCode == 53) {
    handleEvent("5", true);
  } else if (key == 1 || keyCode == 102 || keyCode == 54) {
    handleEvent("6", true);
  } else if (key == 1 || keyCode == 103 || keyCode == 55) {
    handleEvent("7", true);
  } else if (key == 1 || keyCode == 104 || keyCode == 56) {
    handleEvent("8", true);
  } else if (key == 1 || keyCode == 105 || keyCode == 57) {
    handleEvent("9", true);
  } else if (key == '+' || keyCode == 107) {
    handleEvent("+", false);
  } else if (key == '-' || keyCode == 189) {
    handleEvent("-", false);
  } else if (key == '/' || keyCode == 191) {
    handleEvent("/", false);
  } else if (key == '*' || keyCode == 106) {
    handleEvent("*", false);
  } else if (key == '=' || keyCode == 187) {
    handleEvent("=", false);
  }
  printVals();
}
void handleEvent(String keyVal, boolean isNum) {
  if (left && dVal.length()<13 & isNum) {
    if (dVal.equals("0")) {
      dVal = keyVal;
    } else {
      dVal+= keyVal;
    }
    l = float(dVal);
  } else if (!left && dVal.length()<13&& isNum) {
    if (dVal.equals("0")) {
      dVal = keyVal;
    } else {
      dVal+= keyVal;
    }
    // Set R to dVal
    r = float(dVal);
  } else if (keyVal.equals("+") && !isNum) {
    left = false;
    dVal = "0";
    op = "+";
  } else if (keyVal.equals("-") && !isNum) {
    left = false;
    dVal = "0";
    op = "-";
  } else if (keyVal.equals("*") && !isNum) {
    left = false;
    dVal = "0";
    op = "×";
  } else if (keyVal.equals("/") && !isNum) {
    left = false;
    dVal = "0";
    op = "÷";
  } else if (keyVal.equals("=") && !isNum) {
    performCalc();
  }
}

void mousePressed() {
  for (int i=0; i<buttons.length; i++) {
    // Isolate a button click by 1. Finding if mouse is on 2.  is a number
    if (buttons[i].on && buttons[i].isNum) {
      handleEvent(str(buttons[i].val), true);
    } else if (buttons[i].on && buttons[i].isNum) {
      handleEvent(str(buttons[i].val), true);
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val == 'C') {
      clearCalc();
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val == '+') {
      handleEvent("+", false);
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val == '-') {
      handleEvent("-", false);
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val == '×') {
      handleEvent("*", false);
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val == '÷') {
      handleEvent("/", false);
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val == '²') {
      if (left) {
        l *= l;
        dVal = str(l);
      } else {
        r*=r;
        dVal = str(r);
      }
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val == '%') {
      if (left) {
        l =l*0.01;
        dVal = str(l);
      } else {
        r=r*0.01;
        dVal = str(r);
      }
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val == 'π') {
      if (left) {
        l = PI;
        dVal = str(l);
      } else {
        r=PI;
        dVal = str(r);
      }
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val == '!') {
      if (left) {
        for (float x=l-1; x>= 1; x-=1) {
          l*=x;
        }
        dVal = str(l);
      } else {
        for (float x=r-1; x>= 1; x-=1) {
          r*=x;
        }
        dVal = str(r);
      }
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val == '=') {
      handleEvent("=", false);
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val == '±') {
      if (left) {
        l = -l;
        dVal = str(l);
      } else {
        r=-r;
        dVal = str(r);
      }
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val == '√') {
      if (left) {
        l = sqrt(l);
        dVal = str(l);
      } else {
        r=sqrt(r);
        dVal = str(r);
      }
    }
  }
  printVals();
}
void clearCalc() {
  dVal = "0";
  op = "";
  left = true;
  l = 0.0;
  r = 0.0;
  result = 0.0;
}



void updateDisplay() {
  fill(180);
  rectMode(CENTER);
  rect(width/2, 25, 200, 30, 7 );
  fill(0);
  textSize(28);
  textAlign(RIGHT);
  text(dVal, 190, 33);
}

void printVals() {
  println("l:" + l);
  println("r:" +r);
  println("left:" +left);
  println("op:" + op);
  println("result:" + result);
}

void performCalc() {
  if (op.equals("+")) {
    result = l+r;
  } else if (op.equals("-")) {
    result = l-r;
  } else if (op.equals("×")) {
    result = l*r;
  } else if (op.equals("÷")) {
    result = l/r;
  }
  dVal = str(result);
}
