// Code 1 FA_18
// Bryan Ma

// use the foundation of the last code challenge, and instead of drawing 5 ellipses, 
// draw a large number of shapes (ellipses or whatever) using a larger array to store their x positions.
// use map to affect the parameters of them being drawn, like size or color.

// once you've done that, try adding another corresponding array to store their y positions.

// finally, try modifying the values you've stored every frame to make the shapes change their positions somehow.

float[] x = new float[500];
float[] y = new float[x.length];

void setup() {
  size (700, 700);
  noStroke();
  for (int i = 0; i < x.length; i++) {
    x[i] = random(10, 690);
    y[i] = random(10, 690);
  }
}

void draw() {
  background(0);
  for (int i = 0; i < x.length; i++) {
    float s = map(mouseX, 0, 700, 3, 9);
    float a = map(mouseX, 0, 700, 255, 100);
    ellipse(x[i], y[i], s, s);
    fill(255, a);
    x[i] += random(-1,1);
    y[i] += random(-1,1);
    if (x[i] > width || y[i] > height) {
      x[i] -=5;
      y[i] -=5;
    }
  }
}
