public void setup()
{
  size(600, 600);
  background(0, (int)(Math.random()*155)+100, 255);
  frameRate(1);
}
public void draw()
{
  rayFractal(0, 0, 300);
  cloudFractal(250, 0, 250);
  cloudFractal(360, 150, 250);
  myFractal(225, 225, 200);
  myFractal(350, 350, 200);
  noStroke();
}
public void rayFractal(int c, int d, int wid)
{
  noStroke();
  fill(240, (int)(Math.random()*155)+100, 70);
  ellipse(0, 0, wid, wid);
  if(wid > 10)
  {
    rayFractal(c, d, 5*wid/6);
  }
}
public void cloudFractal(int a, int b, int len)
{
  stroke(37, 177, 252);
  fill((int)(Math.random()*255), (int)(Math.random()*255), 255, 100);
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
  fill(255, (int)(Math.random()*255), (int)(Math.random()*255), 100);
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