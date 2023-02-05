public void setup()
{
  size(500,500);
  background(255);
  smooth();
  fill(50);
}
public void draw()
{ 
  for(int i = 0; i < 250; i++) {
    sierpinski(200, 200, 100 + i);
    }
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
    if(len <= 20) {
        triangle(x, y, x+len, y, x+len/2, y-len);
        fill(20*len, 255/len, len);
    }
    else {
        sierpinski(x, y, len/2);
        sierpinski(x+len/2, y, len/2);
        sierpinski(x+len/4, y-len/2, len/2);
    }
}
