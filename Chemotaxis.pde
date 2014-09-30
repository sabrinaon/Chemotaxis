Bacteria [] colony;
 void setup()   
 {     
 	//initialize bacteria variables here  
 	size(800,800);
 	colony = new Bacteria [90]; 
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	//move and show the bacteria  
 	fill(238,149,149);
 	rect(0, 0, 800, 800);
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i].move();
 		colony[i].show();
 	}
 }  
 class Bacteria    
 {     
 	//lots of java!   
 	int myX, myY, myColor;
 	Bacteria()
 	{
 		myX = (int)(Math.random()*800);
 		myY = (int)(Math.random()*800);
 		myColor = (int)(Math.random()*256);
 	}   
 	void move()
 	{
 		if (myX < mouseX)
 		{
 			myX = myX + (int)(Math.random()*3) + 2;
 		}
 		else if (myX > mouseX)
 		{
 			myX = myX + (int)(Math.random()*3) - 2;
 		}
 		else
 		{
 			myX = myX + (int)(Math.random()*3) - 3;
 		}
 		if (myY < mouseY)
 		{
 			myY = myY + (int)(Math.random()*3) + 1;
 		}
 		else if (myY > mouseY)
 		{
 			myY = myY + (int)(Math.random()*3) - 2;
 		}
 		else
 		{
 			myY = myY + (int)(Math.random()*3) - 1;
 		}
 	} 
 	void show()
 	{
 		stroke(2);
 		fill(0,myColor,myColor);
 		ellipse(myX, myY, 20, 20);
 	}
 }