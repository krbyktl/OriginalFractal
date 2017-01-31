public void setup()
{
  size(600, 600);
  background(0, 175, 255);
}
public void draw()
{
  myFractal(300, 300, 250);
  noStroke();
  ellipse(0, 0, 50, 50);
}
public void myFractal(int x, int y, int siz)
{
  stroke(0, 255, 0);
  beginShape();
  vertex(x, y);
  vertex(x+siz, y);
  vertex(x+3*siz/2, y+siz*sqrt(3)/2);
  vertex(x+siz, y+siz*sqrt(3));
  vertex(x, y+siz*sqrt(3));
  vertex(x-siz/2, y+siz*sqrt(3)/2);
  endShape(CLOSE);
  if(siz>10)
  {
    myFractal(x+siz/2, y+siz/2, siz/2);
    myFractal(x-siz/2, y-siz/2, siz/2);
  }
}