// AP Computer Programming - Dice Assignment
// Bryan Zin - Block 3: Mr. Simon

BigDie soren;
AnotherDie carly;

int bigCount = 0; // counts the number of big dice for soren
int count = 0; // counts the number of small dice for soren
int sum = 0; // adds up all dice for soren

int bigCountTwo = 0;
int countTwo = 0;
int sumTwo = 0;

void setup()
{
  background(71,62,62);
  size(1200, 700);
  noLoop();
  soren = new BigDie(200,200);
  carly = new AnotherDie(650,200);
}

void draw()
{
  background(71,62,62);
  soren.roll();
  soren.show();
  carly.roll();
  carly.show();

  int total, littleTotal, totalTwo, littleTotalTwo;

  total = bigCount;
  littleTotal = count;
  sum = total + littleTotal;

  totalTwo = bigCountTwo;
  littleTotalTwo = countTwo;
  sumTwo = totalTwo + littleTotalTwo;

  stroke(0);
  quad(450, 200, 450, 450, 520, 367, 520, 117); // right face of soren
  fill((int)(Math.random()*256)+1,(int)(Math.random()*256)+1,(int)(Math.random()*256)+1);
  quad(450, 200, 200, 200, 300, 117, 520, 117); // top face of soren
  quad(900, 200, 900, 450, 970, 367, 970, 117); // right face of carly
  fill((int)(Math.random()*256)+1,(int)(Math.random()*256)+1,(int)(Math.random()*256)+1);
  quad(900, 200, 650, 200, 750, 117, 970, 117); // top face of carly

  textSize(36);
  text("Total Big Dice = "+ total, 50, 500);
  text("Total Little Dice = "+ littleTotal, 50, 550);
  text("Total Sum = "+ sum, 50, 600);

  textSize(36);
  text("Total Big Dice = "+ totalTwo, 675, 500);
  text("Total Little Dice = "+ littleTotalTwo, 675, 550);
  text("Total Sum = "+ sumTwo, 675, 600);


  bigCountTwo = 0;
  countTwo = 0;
  sumTwo = 0;

  bigCount = 0; 
  count = 0;
  sum = 0;
}

void mousePressed()
{
  redraw();
}


////////////////////////////////////////// Big dice stuff ///////////////////////////////////////////////////////


class BigDie 
{
  int myX, myY, LittleDie;
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
    rect(200, 200, 250, 250);
    
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

//////////////////////////////// Second Big Die Stuff ///////////////////////////////////////////////


class AnotherDie 
{
  int myX, myY, LittleDie;
  AnotherDie(int x, int y)
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
    rect(650, 200, 250, 250);
    
    DieTwo one, two, three, four, five, six;
    if (LittleDie == 1)
    {
      one = new DieTwo(750,300);
      one.show();
      bigCountTwo += 1;
    }  
    if (LittleDie == 2)
    {
      one = new DieTwo(700,250);
      six = new DieTwo(800,350);
      one.show();
      six.show();
      bigCountTwo += 2;
    }  
   if (LittleDie == 3)
   {
      one = new DieTwo(750,300);
      two = new DieTwo(830,300);
      three = new DieTwo(670,300);
      one.show();
      two.show(); 
      three.show();
      bigCountTwo += 3;
   }
   if (LittleDie == 4)
    {
      fill(255,0,0);
      one = new DieTwo(700,250);
      two = new DieTwo(800,250);
      three = new DieTwo(700,350);
      four = new DieTwo(800,350);
      one.show();
      two.show();
      three.show();
      four.show();
      bigCountTwo += 4;
    }  
    if (LittleDie == 5)
   {
      one = new DieTwo(750,300);
      two = new DieTwo(830,300);
      three = new DieTwo(670,300);
      four = new DieTwo(750,220);
      five = new DieTwo(750,380);
      one.show();
      two.show(); 
      three.show();
      four.show();
      five.show();
      bigCountTwo += 5;
   }
   if (LittleDie == 6)
   {
      one = new DieTwo(750,250);
      two = new DieTwo(830,250);
      three = new DieTwo(670,250);
      four = new DieTwo(750,350);
      five = new DieTwo(830,350);
      six = new DieTwo(670,350); 
      one.show();
      two.show(); 
      three.show();
      four.show();
      five.show();
      six.show();
      bigCountTwo += 6;
   }
   
  }
  
}



////////////////////////////////////////// Little dice number two stuff ///////////////////////////////////////////////////////



class DieTwo // models one single dice cube
{
  int myX, myY, face;
  DieTwo(int x, int y)  
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
         countTwo += 1;
       }
       else if (face == 2) // rolling a 2
       {
         noStroke();
         fill((int)(Math.random()*256)+1,(int)(Math.random()*256)+1,(int)(Math.random()*256)+1);
         ellipse(myX+15, myY+25, 10, 10);
         ellipse(myX+32, myY+25, 10, 10);
         countTwo += 2;
       }
       else if (face == 3) // rolling a 3
       {
         noStroke();
         fill((int)(Math.random()*256)+1,(int)(Math.random()*256)+1,(int)(Math.random()*256)+1);
         ellipse(myX+10, myY+23, 10, 10);
         ellipse(myX+39, myY+23, 10, 10);
         ellipse(myX+24, myY+23, 10, 10);
         countTwo += 3;
       }
       else if (face == 4) // rolling a 4
       {
         noStroke();
         fill((int)(Math.random()*256)+1,(int)(Math.random()*256)+1,(int)(Math.random()*256)+1);
         ellipse(myX+15, myY+12, 10, 10);
         ellipse(myX+35, myY+12, 10, 10);
         ellipse(myX+15, myY+34, 10, 10);
         ellipse(myX+35, myY+34, 10, 10);
         countTwo += 4;
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
         countTwo += 5;
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
         countTwo += 6;
       }
  }

}