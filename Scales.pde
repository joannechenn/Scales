
void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  scale(0, 0);
  scale(78, 0);
  scale(100, 100);
  scale(0, 435);

}
void scale(int x, int y) {
  //triangle w/ gradient
  strokeWeight(1);
  noFill();
  int i = 0;
  int j = 0;
  float c = 0;
  while((i < 33) && (j < 33)){
    stroke(c, 0, c);
    triangle((0 + i) + x, (0 + j) + y, 37.5 + x, (65 - j) + y, (75 - i) + x, (0 + j) + y);
    i++;
    j++;
    c += 255/33.0;
  }
  
  //outside curve
  strokeWeight(3);
  stroke(50);
  fill(0);
  curve(55 + x, 5 + y, 0 + x, 0 + y, 37.5 + x, 65 + y, 130 + x, 40 + y);
  curve(20 + x, 5 + y, 75 + x, 0 + y, 37.5 + x, 65 + y, -45 + x, 40 + y);
}
