void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  scale(0, 0);

}
void scale(int x, int y) {
  //triangle w/ gradient
  strokeWeight(1);
  noFill();
  int i = 0;
  int j = 0;
  float c = 255;
  while((i < 30) && (j < 30)){
    stroke(c, 0, 0);
    triangle(0 + i, 0, 37.5, 65 - j, 75 - i, 0);
    i++;
    j++;
    c -= 255/30.0;
  }
  
  //outside curve
  strokeWeight(3);
  stroke(50);
  fill(0);
  curve(55, 5, 0, 0, 37.5, 65, 130, 40);
  curve(20, 5, 75, 0, 37.5, 65, -45, 40);
}
