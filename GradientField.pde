
int screenHeight;
int screenWidth;

void setup() {
  // set up window
  screenWidth = displayWidth;
  screenHeight = displayHeight;
  // set up graphics
  size(screenWidth, screenHeight);
  colorMode(HSB, 100);
  ellipseMode(CENTER);
  background(100);
}

void draw() {
  fill(0, 0, 100, 2);
  rect(0, 0, screenWidth, screenHeight);
  drawGradient(color(random(100), random(50, 100), random(50, 100)), mouseX, mouseY, (int) (random(0.5, 1)*screenHeight));
}

void drawGradient(color c, int x, int y, int radius) {
  noFill();
  strokeWeight(0.5);
  for (int r = 0; r < 100; r+=3) {
    stroke(c, 100 - r);
    ellipse(x, y, map(r, 0, 100, 0, radius), map(r, 0, 100, 0, radius));
  }
}
