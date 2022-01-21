/*
  Simulating raining
  Document from Daniel Shiffman - raining sketch
*/

int rainAmount = 600;
Drop[] drop = new Drop[rainAmount];

void setup() {
  fullScreen();
  for ( int i = 0; i < drop.length; i++) {
    drop[i] = new Drop();
  }
}

void draw() {
  background(255);
  for (int i = 0; i < drop.length; i++) {

    drop[i].show();
    drop[i].fall();
  }
  
}
