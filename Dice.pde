Die firstRoll;
void setup()
{
	noLoop();
	size (700,700);
}
void draw()
{
	//your code here
	// die1.roll();
	background(50,150,255);
	int numDice = 0;
	for (int y = 100; y < 500; y+=120){
		for (int x = 100; x < 500; x += 120){
			firstRoll = new Die (x,y);
			firstRoll.show();
			firstRoll.roll();
			numDice = numDice + firstRoll.numDice;
		}
	}
	textSize (20);
	fill(0);
	text ("The total number added up is " + numDice, 100, 650);
	text ("Dice Program - Tony O.", 100, 50);

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here

	int myX, myY, numDice, numSize;	
	
	Die(int x, int y) //constructor
	{
		//variable initializations here
		numSize = 100;
	    numDice = (int)(Math.random()*6+1);
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your code here
		fill (50, 0, 175);
		stroke(150);
		if(numDice == 1){
			ellipse(myX + 48, myY + 48, 20, 20);
		}else if (numDice == 2){
			ellipse (myX + 24, myY + 24, 20, 20);
			ellipse (myX + 74, myY + 74, 20, 20);
		}else if (numDice == 3){
			ellipse (myX + 25, myY + 25, 20, 20);
			ellipse (myX + 50, myY + 50, 20, 20);
			ellipse (myX + 75, myY + 75, 20, 20);
		}else if (numDice == 4){
			ellipse (myX + 25, myY + 25, 20, 20);
			ellipse (myX + 75, myY + 75, 20, 20);
			ellipse (myX + 25, myY + 75, 20, 20);
			ellipse (myX + 75, myY + 25, 20, 20);
		}else if (numDice == 5){
		    ellipse (myX + 25, myY + 25, 20, 20);
			ellipse (myX + 75, myY + 75, 20, 20);
			ellipse (myX + 25, myY + 75, 20, 20);
			ellipse (myX + 75, myY + 25, 20, 20);  
			ellipse (myX + 50, myY + 50, 20, 20);
		}else{
			ellipse (myX + 40, myY + 25, 20, 20);
			ellipse (myX + 65, myY + 25, 20, 20);
			ellipse (myX + 40, myY + 50, 20, 20);
			ellipse (myX + 65, myY + 50, 20, 20);  
			ellipse (myX + 40, myY + 75, 20, 20);
			ellipse (myX + 65, myY + 75, 20, 20);
		}
	}
	void show()
	{
		//your code here
		fill(200,200,200);
        stroke(0);
        rect (myX, myY, numSize,numSize,50);
	}
}
