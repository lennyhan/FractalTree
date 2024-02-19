private double fractionLength = 0.8;
private int smallestBranch = 10;
private double branchAngle = 0.2;

public void setup() {
  size(640, 480);
  noLoop();
}

public void draw() {
  background(0);
  stroke(0, 255, 0);
  line(320, 480, 320, 380);
  drawBranches(320, 380, 75, -PI/2);
}

public void drawBranches(int x, int y, double branchLength, double angle) {
  if (branchLength > smallestBranch) {
    float endX = (float)(x + cos((float)angle) * branchLength);
    float endY = (float)(y + sin((float)angle) * branchLength);
    
    line(x, y, endX, endY);
    
    drawBranches((int)endX, (int)endY, branchLength * fractionLength, angle + branchAngle);
    drawBranches((int)endX, (int)endY, branchLength * fractionLength, angle - branchAngle);
  }
}
