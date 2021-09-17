void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
  background(150);
}


void draw() {
  boolean shift = true;
  for(int y = 500; y > -25; y -= 25)
  {
    for(int x = 0; x < 575; x += 75)
    {
       if(shift == true)
          scale(x - 37, y);
       else
          scale(x, y - 12);
    }
    if(shift == true)
       shift = false;
    else
       shift = true;
  }
}


void scale(int x, int y) {
  //triangle w/ gradient
  strokeWeight(1);
  noFill();
  int i = 0;
  int j = 0;
  float c = 0;
  while((i < 33) && (j < 33)){
    c += 255/((float)(Math.random() * 75) + 10);
    stroke(c, 0, c);
    triangle(i + x, j + y, 37.5 + x, (65 - j) + y, (75 - i) + x, j + y);
    i++;
    j++;
  }
  
  //outside curve
  strokeWeight(3);
  stroke((int)(Math.random() * 30) + 45);
  fill(0);
  curve(55 + x, 5 + y, x, y, 37.5 + x, 65 + y, 130 + x, 40 + y);
  curve(20 + x, 5 + y, 75 + x, y, 37.5 + x, 65 + y, -45 + x, 40 + y);
}
