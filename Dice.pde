Die soren;
void setup()
{
	background(71,62,62);
	size(600, 600);
	noLoop();
	soren = new Die(325,325);
}
void draw()
{
	soren.show();
	soren.roll();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int face, myX, myY;
	Die(int x, int y) //constructor
	{
		face = (int)(Math.random()*6)+1;
		myX = x;
		myY = y;
	}
	void roll()
	{
		 if (face == 1) 
		 {
		 	noStroke();
		 	fill(255);
		 	ellipse(myX, myY, 10, 10);
		 }
		 if (face == 2) 
		 {
		 	noStroke();
		 	fill(255);
		 	ellipse(myX, myY, 10, 10);
		 }
		 if (face == 3) 
		 {
		 	noStroke();
		 	fill(255);
		 	ellipse(myX, myY, 10, 10);
		 }
		 if (face == 4) 
		 {
		 	noStroke();
		 	fill(255);
		 	ellipse(myX, myY, 10, 10);
		 }
		 if (face == 5) 
		 {
		 	noStroke();
		 	fill(255);
		 	ellipse(myX, myY, 10, 10);
		 }
		 if (face == 6) 
		 {
		 	noStroke();
		 	fill(255);
		 	ellipse(myX, myY, 10, 10);
		 }
	}
	void show()
	{
		fill(0);
		rect(300, 300, 50, 50);
	}
}
