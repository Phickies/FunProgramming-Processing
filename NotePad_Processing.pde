//INTRODUCTION//
/*
  This is a taking note program.
  This has no interaction but you can type your text in here.
  Similar to notepad but in a better background color and font.
*/
/* You can freely copy it or modify it for your own use.*/
// Made by Phicks.

// Need to fix the line

String contents = "";
float cwidth;
float lineX;
color bc = 50;

void setup() {
  size(500, 500);
  stroke(255);
  fill(255);
}

void draw() {
  colorCheck();
  background(bc);
  textSize(24);
  text(contents, 50, 50, 400, 400);
  
  try {
    cwidth = textWidth(contents);
    lineX = cwidth;
  }
  catch (Exception e) {
    e.printStackTrace();
  }
  
  pushMatrix();
  translate(50, 50);
  line(lineX, 0, lineX, 32); //draw the line.
  popMatrix();
}

void keyPressed() {
  try {
    if (keyCode == BACKSPACE) {
      contents = contents.substring(0, contents.length() - 1);
    }
  }
  catch (StringIndexOutOfBoundsException e) {
    e.printStackTrace();
  }
}

void keyTyped() {
  if (key != BACKSPACE) {
    contents += key;
  }
}

void colorCheck(){
  if (contents.contains("green")){
    bc = color(0,255,0);
  } else if (contents.contains("red")){
    bc = color(255,0,0);
  } else if (contents.contains("blue")){
    bc = color(0,0,255);
  } else if (contents.contains("defaults")){
    bc = color(0);
  }
}
