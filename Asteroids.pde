class Asteroid extends Floater
{
   private int rotSpeed; //randomly + or -
   public Asteroid(){
     rotSpeed = (int)(Math.random()*9)-4;
     myColor = (255);
     myXspeed = (int)((Math.random()*7)-3);
     myYspeed = (int)((Math.random()*7)-3);
     myPointDirection = (int)(Math.random()*361);
     myCenterX= (int)(Math.random()*601);
     myCenterY= (int)(Math.random()*601);
     corners = 7;
     xCorners = new int[corners];
     yCorners = new int[corners];
     xCorners[0] = -4;
     yCorners[0] = 16;
     xCorners[1] = 12;
     yCorners[1] = 16;
     xCorners[2] = 28;
     yCorners[2] = 20;
     xCorners[3] = 32;
     yCorners[3] = -8;
     xCorners[4] = 8;
     yCorners[4] = -16;
     xCorners[5] = -16;
     yCorners[5] = -1;
     xCorners[6] = -16;
     yCorners[6] = 20;
  }
  //overwrite move to rotate asteroid automatically
  public void move() {
    turn(rotSpeed);
    super.move();
  }
  //getters used in AsteroidsGame.pde
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
}
