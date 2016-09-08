// AP Computer Programming - Dice Assignment
// Bryan Zin - Block 3: Mr. Simon

Die soren;
void setup()
{
	background(71,62,62);
	size(600, 600);
	noLoop();
	soren = new Die(325,325); // this is where the dice numbers show up
}
void draw()
{
	rect(200, 200, 250, 250);
	soren.show();
	soren.roll();
}
void mousePressed()
{
	redraw();
}
class Die // models one single dice cube
{
	int myX, myY;
	Die(int x, int y)  
	{
		myX = x;
		myY = y;
	}
	void roll()
	{
		int face;
		face = (int)(Math.random()*6)+1;
		 if (face == 1) // rolling a 1
		 {
		 	noStroke();
		 	fill(204,0,0);
		 	ellipse(myX, myY, 10, 10);
		 }
		 else if (face == 2) // rolling a 2
		 {
		 	noStroke();
		 	fill(255,128,0);
		 	ellipse(myX-10, myY, 10, 10);
		 	ellipse(myX+10, myY, 10, 10);
		 }
		 else if (face == 3) // rolling a 3
		 {
		 	noStroke();
		 	fill(255,255,51);
		 	ellipse(myX-16, myY, 10, 10);
		 	ellipse(myX+16, myY, 10, 10);
		 	ellipse(myX, myY, 10, 10);
		 }
		 else if (face == 4) // rolling a 4
		 {
		 	noStroke();
		 	fill(128,255,0);
		 	ellipse(myX-10, myY-10, 10, 10);
		 	ellipse(myX+10, myY-10, 10, 10);
		 	ellipse(myX-10, myY+10, 10, 10);
		 	ellipse(myX+10, myY+10, 10, 10);
		 }
		 else if (face == 5) // rolling a 5
		 {
		 	noStroke();
		 	fill(0,255,255);
		 	ellipse(myX-10, myY-10, 10, 10);
		 	ellipse(myX+10, myY-10, 10, 10);
		 	ellipse(myX-10, myY+10, 10, 10);
		 	ellipse(myX+10, myY+10, 10, 10);
		 	ellipse(myX, myY, 10, 10);
		 }
		 else if (face == 6) // rolling a 6
		 {
		 	noStroke();
		 	fill(0,0,204);
		 	ellipse(myX-16, myY-10, 10, 10);
		 	ellipse(myX+16, myY-10, 10, 10);
		 	ellipse(myX, myY-10, 10, 10);
		 	ellipse(myX-16, myY+10, 10, 10);
		 	ellipse(myX+16, myY+10, 10, 10);
		 	ellipse(myX, myY+10, 10, 10);
		 }
	}
	void show()
	{
		fill(0);
		rect(300, 300, 50, 50); // the "square" for the dice
	}
}
