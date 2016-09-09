

// AP Computer Programming - Dice Assignment
// Bryan Zin - Block 3: Mr. Simon

BigDie soren;

void setup()
{
  background(71,62,62);
  size(700, 700);
  noLoop();
  soren = new BigDie(200,200);
}

void draw()
{
	soren.roll();
	soren.show();
  /*int total = bigCount + count;
  text(Total, 10, 10);*/	
}

void mousePressed()
{
  redraw();
}


////////////////////////////////////////// Big dice stuff ///////////////////////////////////////////////////////


class BigDie 
{
  int myX, myY, LittleDie;
  int bigCount = 0; // counts the number of big dice
  BigDie(int x, int y)
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
   LittleDie = (int)(Math.random()*6)+1;
  }
  void show()
  {
  	fill((int)(Math.random()*256)+1,(int)(Math.random()*256)+1,(int)(Math.random()*256)+1);
  	rect(200, 200, 250, 250,10);
    
    Die one, two, three, four, five, six;
    if (LittleDie == 1)
    {
      one = new Die(300,300);
      one.show();
      bigCount += 1;
    }  
    if (LittleDie == 2)
    {
      one = new Die(250,250);
      six = new Die(350,350);
      one.show();
      six.show();
      bigCount += 2;
    }  
   if (LittleDie == 3)
   {
   		one = new Die(300,300);
   		two = new Die(380,300);
   		three = new Die(220,300);
   		one.show();
   		two.show(); 
   		three.show();
      bigCount += 3;
   }
   if (LittleDie == 4)
    {
      fill(255,0,0);
      one = new Die(250,250);
      two = new Die(350,250);
      three = new Die(250,350);
      four = new Die(350,350);
      one.show();
      two.show();
      three.show();
      four.show();
      bigCount += 4;
    }  
    if (LittleDie == 5)
   {
   		one = new Die(300,300);
   		two = new Die(380,300);
   		three = new Die(220,300);
   		four = new Die(300,220);
   		five = new Die(300,380);
   		one.show();
   		two.show(); 
   		three.show();
   		four.show();
   		five.show();
      bigCount += 5;
   }
   if (LittleDie == 6)
   {
   		one = new Die(300,250);
   		two = new Die(380,250);
   		three = new Die(220,250);
   		four = new Die(300,350);
   		five = new Die(380,350);
   		six = new Die(220,350);	
   		one.show();
   		two.show(); 
   		three.show();
   		four.show();
   		five.show();
   		six.show();
      bigCount += 6;
   }
   
  }
  
}


////////////////////////////////////////// Little dice stuff ///////////////////////////////////////////////////////


class Die // models one single dice cube
{
  int myX, myY, face;
  int count = 0; // counts the number of small dice
  Die(int x, int y)  
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
      face = (int)(Math.random()*6)+1;
  }
  void show()
  { 
    fill(0);
    rect(myX, myY, 50, 50,10); // the "square" for the dice
    
     	if (face == 1) // rolling a 1
       {
         noStroke();
         fill((int)(Math.random()*256)+1,(int)(Math.random()*256)+1,(int)(Math.random()*256)+1);
         ellipse(myX+25, myY+25, 10, 10);
         count += 1;
       }
       else if (face == 2) // rolling a 2
       {
         noStroke();
         fill((int)(Math.random()*256)+1,(int)(Math.random()*256)+1,(int)(Math.random()*256)+1);
         ellipse(myX+15, myY+25, 10, 10);
         ellipse(myX+32, myY+25, 10, 10);
         count += 2;
       }
       else if (face == 3) // rolling a 3
       {
         noStroke();
         fill((int)(Math.random()*256)+1,(int)(Math.random()*256)+1,(int)(Math.random()*256)+1);
         ellipse(myX+10, myY+23, 10, 10);
         ellipse(myX+39, myY+23, 10, 10);
         ellipse(myX+24, myY+23, 10, 10);
         count += 3;
       }
       else if (face == 4) // rolling a 4
       {
         noStroke();
         fill((int)(Math.random()*256)+1,(int)(Math.random()*256)+1,(int)(Math.random()*256)+1);
         ellipse(myX+15, myY+12, 10, 10);
         ellipse(myX+35, myY+12, 10, 10);
         ellipse(myX+15, myY+34, 10, 10);
         ellipse(myX+35, myY+34, 10, 10);
         count += 4;
       }
       else if (face == 5) // rolling a 5
       {
         noStroke();
         fill((int)(Math.random()*256)+1,(int)(Math.random()*256)+1,(int)(Math.random()*256)+1);
         ellipse(myX+12, myY+25, 10, 10);
         ellipse(myX+39, myY+25, 10, 10);
         ellipse(myX+25, myY+10, 10, 10);
         ellipse(myX+25, myY+40, 10, 10);
         ellipse(myX+25, myY+25, 10, 10);
         count += 5;
       }
       else if (face == 6) // rolling a 6
       {
         noStroke();
         fill((int)(Math.random()*256)+1,(int)(Math.random()*256)+1,(int)(Math.random()*256)+1);
         ellipse(myX+10, myY+19, 10, 10);
         ellipse(myX+39, myY+19, 10, 10);
         ellipse(myX+24, myY+19, 10, 10);
         ellipse(myX+10, myY+31, 10, 10);
         ellipse(myX+39, myY+31, 10, 10);
         ellipse(myX+24, myY+31, 10, 10);
         count += 6;
       }
  }

}