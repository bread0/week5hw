// Code 1 FA_18
// Bryan Ma

// this code uses 5 separate floats to store the positions being used to draw 5 ellipses.

// change the code so that instead of using 5 separate floats, use one array of floats.
// then loop through the array to draw the ellipses, instead of drawing them one by one.

float[] b = new float[5];

void setup() {
  size(600, 600);
  noStroke();
  for (int i = 0; i < 5; i++) {
    b[i] = map(i, 0, 5, 100, 600);
  }
}

void draw() {
  background(150);
  for (int i = 0; i < 5; i++) {
    ellipse(b[i], height/2, 70, 70);
  }
}
