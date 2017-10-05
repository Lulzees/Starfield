NormalParticle[] gidgets;
void setup()
{
  size(600, 600);
  gidgets = new NormalParticle[500];
  for (int i = 0; i < gidgets.length; i++)
  {
    gidgets[i] = new NormalParticle();
  }
}
void draw()
{
  background(0);
  for (int i = 0; i < gidgets.length; i++)
  {
    gidgets[i].show();
    gidgets[i].move();
  }
}
class NormalParticle
{
  double myX, myY, mySpeed, myAngle; 
  int r, g, b;
  NormalParticle()
  {
    myX = (int)(Math.random()*100+250);
    myY = (int)(Math.random()*100+250);
    mySpeed = Math.random()*15+10;
    myAngle = Math.random()*2*PI;
    /*r = (int)(Math.random()*255);
    g = (int)(Math.random()*255);
    b = (int)(Math.random()*255);*/
  }
  void move()
  {
    myX = myX + mySpeed * Math.cos(myAngle);
    myY = myY + mySpeed * Math.sin(myAngle);
    if (myX > 600 || myX < 0 || myY > 600 || myY < 0)
    {
      myX = (int)(Math.random()*100+250);
      myY = (int)(Math.random()*100+250);
      mySpeed = Math.random()*15+10;
      myAngle = Math.random()*2*PI;
    }
  }
  void show()
  {
    noStroke();
    fill((int)(myX*0.425),(int)(myY*0.425), (int)((myX+myY)*0.2125));
    ellipse((int)myX, (int)myY, 10, 10);
    if (myX > 600 || myX < 0 || myY > 600 || myY < 0)
    {
      r = (int)(Math.random()*255);
      g = (int)(Math.random()*255);
      b = (int)(Math.random()*255);
    }
  }
}
interface Particle
{
  //your code here
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}