Particle[] gidgets;
void setup()
{
  size(600, 600);
  gidgets = new Particle[500];
  for (int i = 0; i < gidgets.length; i++)
  {
    gidgets[i] = new NormalParticle();
  }
  gidgets[0] = new OddballParticle();
  gidgets[1] = new JumboParticle();
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
class NormalParticle implements Particle
{
  double myX, myY, mySpeed, myAngle; 
  NormalParticle()
  {
    myX = (int)(Math.random()*100+250);
    myY = (int)(Math.random()*100+250);
    mySpeed = Math.random()*15+10;
    myAngle = Math.random()*2*PI;
  }
  public void move()
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
  public void show()
  {
    noStroke();
    fill((int)(myX*0.425+100), (int)(myY*0.425+100), (int)((myX+myY)*0.2125+100));
    ellipse((int)myX, (int)myY, 5, 5);
  }
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle
{
  double myX, myY, mySpeed, myAngle; 
  int o;
  OddballParticle()
  {
    myX = (int)(Math.random()*100+250);
    myY = (int)(Math.random()*100+250);
    mySpeed = Math.random()*15+10;
    myAngle = Math.random()*2*PI;
    o = (int)(Math.random()*70+30);
  }
  public void show()
  {
    noStroke();
    fill((int)(myY*0.425+100), (int)(myX*0.425+100), (int)((myX+myY)*0.2125+100), o);
    ellipse((int)myX, (int)myY, 50, 50);
    o = (int)(Math.random()*70+30);
  }
  public void move()
  {
    myX = myX + mySpeed * Math.cos(myAngle);
    myY = myY + mySpeed * Math.sin(myAngle);
    mySpeed = Math.random()*15+10;
    myAngle = Math.random()*2*PI;
    if (myX > 600 || myX < 0 || myY > 600 || myY < 0)
    {
      myX = myY = 300;
    }
  }
}
class JumboParticle implements Particle
{
  double myX, myY, mySpeed, myAngle; 
  int s;
  JumboParticle()
  {
    myX = (int)(Math.random()*100+250);
    myY = (int)(Math.random()*100+250);
    mySpeed = Math.random()*15+10;
    myAngle = Math.random()*2*PI;
    s = (int)(Math.random()*50+50);
  }
  public void show()
  {
    noStroke();
    fill((int)(myX*0.425+100), (int)(myY*0.425+100), (int)((myX+myY)*0.2125+100));
    ellipse((int)myX, (int)myY, s, s);
    s = (int)(Math.random()*100+20);
  }
  public void move()
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
}