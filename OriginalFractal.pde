public void setup()
{
  size(600, 600);
  background(0, 175, 255);
}
public void draw()
{
  cloudFractal(250, 0, 250);
  cloudFractal(360, 150, 250);
  myFractal(300, 300, 200);
  noStroke();
  fill(242, 207, 53);
  ellipse(0, 0, 75, 75);
}
public void cloudFractal(int a, int b, int len)
{
  stroke(37, 177, 252);
  fill(169, 229, 249, 255);
  ellipse(a, b, len, len);
  if(len > 10)
  {
    cloudFractal(a, b, len/2);
    cloudFractal(a+len/2, b, len/2);
    cloudFractal(a+len/2, b-len/3, len/2);
  }
}
public void myFractal(int x, int y, int siz)
{
  stroke(37, 177, 252);
  beginShape();
  vertex(x, y);
  vertex(x+siz, y);
  vertex(x+3*siz/2, y+siz*sqrt(3)/2);
  vertex(x+siz, y+siz*sqrt(3));
  vertex(x, y+siz*sqrt(3));
  vertex(x-siz/2, y+siz*sqrt(3)/2);
  endShape(CLOSE);
  if(siz > 15)
  {
    myFractal(x+siz/2, y+siz/2, siz/2);
    myFractal(x-siz/2, y-siz/2, siz/2);
  }
}