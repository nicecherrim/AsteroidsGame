class Bullet extends Floater
{
  Bullet(Spaceship ship) {
    myColor = color(237, 150, 142);
    myCenterX = ship.getMyX();
    myCenterY = ship.getMyY();
    myPointDirection = ship.getDirection();
    myXspeed = ship.getXspeed();
    myYspeed = ship.getYspeed();
    accelerate(5);
  }
  public void show() {
    fill(myColor);
    ellipse((float)(myCenterX), (float)(myCenterY), 10, 10);
  }
  //rewrite move so bullets don't wrap
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
  }
  //getters for game.pde
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
}
