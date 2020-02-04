int c = 400;
public void setup()
{
	size(500,500);
	background(0);
}
public void draw()
{

	sierpinski(50,450,400);
}
public void mouseDragged()//optional
{

}
public void mousePressed()
{
	if(c >= 10)
		c = c/2;
	else
		c = 400;
}
public void sierpinski(int x, int y, int len) 
{
	fill((int)(Math.random()*300), (int)(Math.random()*300), (int)(Math.random()*300));
	if(len <= c){
		triangle(x, y, x+len/2, y-len, x+len, y);
	}
	else {
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4, y-len/2,len/2);
	}

}