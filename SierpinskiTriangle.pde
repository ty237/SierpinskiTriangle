public void setup()
{
size(620, 620);
}
public void draw()
{
  sierpinski(10, 10, 600);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 20) {
    triangle(x, y, x+len, y, x+len/2, y+len);
  } else {
    fill ((int)(Math.random()*200), (int)(Math.random()*200), (int)(Math.random()*200));
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y + len/2, len/2);
  }
}
