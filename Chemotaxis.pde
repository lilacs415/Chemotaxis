Bacteria[] esther;
 void setup()   
 {     
   size(500,500);
   esther = new Bacteria[50];
   for (int i = 0; i < esther.length; i++)
   {
     esther[i] = new Bacteria();
   }
 }   
 void draw()   
 {
   background(213);
   for (int i = 0; i < esther.length; i++)
   {
   esther[i].show();
   esther[i].move();
   }
 }  
 void mousePressed()
 {
   for (int i = 0; i < esther.length; i++)
   {
   esther[i].reset();
   }
 }
class Bacteria
{
  int myColor, myWidth, myHeight, myX, myY;
  Bacteria()
  {
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    myWidth = (int)(Math.random()*75+25);
    myHeight = (int)(Math.random()*75+25);
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
  void show()
  {
    fill(myColor);
    stroke(myColor);
    ellipse(myX, myY, myWidth, myHeight);
  }
  void move()
  {
    double direction = Math.random();
    if (direction > 0.5)
    {
      myX = myX + (int)(Math.random()*5-2);
      myY = myY + (int)(Math.random()*5-2);
    }
    else
    {
      myX = myX - (int)(Math.random()*5-2);
      myY = myY - (int)(Math.random()*5-2);
    }
    if (myX - myWidth/2 > 500)
    {
      myX = 0 - myWidth/2;
    }
    if (myX + myWidth/2 < 0)
    {
      myX = 500 + myWidth/2;
    }
    if (myY - myHeight/2 > 500)
    {
      myY = 0 - myHeight/2;
    }
    if (myY + myHeight/2 < 0)
    {
      myY = 0 + myHeight/2;
    }
  }
  void reset()
  {
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    myWidth = (int)(Math.random()*80+20);
    myHeight = (int)(Math.random()*80+20);
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
}    
