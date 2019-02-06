public void setup() {
	size(500,500);
	background(0);
}
public void draw() {
	fractal(250,250,500);
}
public void mousePressed() {

}
public void fractal(int x, int y, float length) {
	if (length < 10)  {
		ellipse(x,y,length,length);
	}
	else {
		fill(255,(int)(Math.random()*80),(int)(Math.random()*80));
		ellipse(x-length/4,y,length/2,length/2);
		ellipse(x-length*(float)Math.sqrt(2)/8,y-length*(float)Math.sqrt(2)/8,length/2,length/2);
		ellipse(x,y-length/4,length/2,length/2);
		ellipse(x+length*(float)Math.sqrt(2)/8,y-length*(float)Math.sqrt(2)/8,length/2,length/2);
		ellipse(x+length/4,y,length/2,length/2);
		ellipse(x+length*(float)Math.sqrt(2)/8,y+length*(float)Math.sqrt(2)/8,length/2,length/2);
		ellipse(x,y+length/4, length/2, length/2);
		ellipse(x-length*(float)Math.sqrt(2)/8,y+length*(float)Math.sqrt(2)/8,length/2,length/2);
		fractal(x,y,length/1.5);
	}
}