Bacteria[] bob;
void setup()   
{
  size(400, 400);
  bob = new Bacteria[30];
  for (int i=0; i<bob.length; i++)
    bob[i]= new Bacteria();
}   
void draw()   
{    
  background(197);
  for (int i=0; i<bob.length; i++)
  {
    bob[i].show();
    bob[i].move();
    bob[i].player();
  }
} 
class Bacteria    
{     
  int myX, myY, myColor;
  float playerX, playerY;
  boolean pressedW, pressedA, pressedS, pressedD, alive = true;
  Bacteria()
  {
    myX = (int) (Math.random()*3)+200;
    myY = (int) (Math.random()*3)+200;
    myColor = (int) Math.random()*255;
    playerX = 200;
    playerY = 390;
  }
  void move()
  {
    myX = myX + (int) (Math.random()*9)-4;
    myY = myY + (int) (Math.random()*9)-4;
  }  
  void show()
  { 
    fill(myColor);
    ellipse(myX, myY, 25, 25);
  }
  void player()
  {
    fill(0, 0, 255);
    ellipse(playerX, playerY, 20, 20);
    if (keyPressed)
    {
      if (key == 'w')
        playerY = playerY - 2;
      pressedW = true;
      if (key == 'a')
        playerX = playerX - 2;
      pressedA = true;
      if (key == 's')
        playerY = playerY + 2;
      pressedS = true;
      if (key == 'd')
        playerX = playerX + 2;
      pressedD = true;
    }
  }
}
