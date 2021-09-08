void setup() {
  size(400, 400);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  strokeWeight(5);
  stroke(255);
  point(0, 0);
  point(75, 0);
  point(37.5, 65);
  stroke(0);
  strokeWeight(2);
  curve(55, 10, 0, 0, 37.5, 65, 130, 35);
  curve(x, x, 75, 0, 37.5, 65, y, y);
}
void scale(int x, int y) {
  //your code here
}
