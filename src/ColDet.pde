// Sreeram Patcha | 24 Aug 2023 | ColDet
// Declaring Variable
int xspeed, yspeed, xpos, ypos, wdth, ht;
void setup() {
  //size(displayWidth, displayHeight); not working
  fullScreen(); // makes the display as large as screen
  background(0);
  //initiallizing variables
  xspeed = 3; // xspeed and yspeed also changes how fast the ball goes
  yspeed = 10;
  wdth = 20; //wdth and ht change the size of the ball
  ht = 20;
  noStroke();
  xpos = width/2;
  ypos = height/2;
  frameRate(120);//Framerate changes animation speed
}

void draw() { //runs on a loop
  //background(0); adds trail
  fill(255); //switching the fill value and background value inverses both of their colors
  ellipse(xpos, ypos, wdth, ht); //<>//
  ellipse(xpos+60, ypos+60, wdth, ht); //makes another ball
  xpos += xspeed/2; //commenting this out makes it go in the same x spot
  ypos += yspeed/2;
  if (xpos >= width-wdth/2 || xpos <= wdth/2) {
    xspeed *= -1;
  }
  if (ypos >= height-ht/2 || ypos <= ht/2) {
    yspeed=yspeed * -1;
  }
}
