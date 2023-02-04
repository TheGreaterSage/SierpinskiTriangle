public void setup()
{
  size(500,500);
  background(255);
  smooth();
  fill(50);
}
public void draw()
{ 
    sierpinski(200, 200, 100);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
    int setter = 0;
    if(len <= setter) {
        triangle(x, y, x+len, y, x+len/2, y-len);
        fill(20*len, 255/len, len);
    }
    else {
        sierpinski(x, y, len/2);
        sierpinski(x+len/2, y, len/2);
        sierpinski(x+len/4, y-len/2, len/2);
    }
}
