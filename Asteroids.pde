class Asteroid extends Floater
{
   private int rotSpeed; //randomly + or -
   public Asteroid(){
     rotSpeed = (int)(Math.random()*11)-5;
     myColor = (255);
     myXspeed = (int)((Math.random()*7)-3);
     myYspeed = (int)((Math.random()*7)-3);
     myPointDirection = (int)(Math.random()*361);
     myCenterX= (int)(Math.random()*401);
     myCenterY= (int)(Math.random()*401);
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
  public void move() {
    turn(rotSpeed);
    super.move();
  }
}
