class Spaceship extends Floater  
{   
    public Spaceship() {
      corners = 3;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      myColor = 255;
      myCenterX = 200;
      myCenterY = 200;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
    }
    void hyperspace() {
      myXspeed = 0;
      myYspeed = 0;
      myCenterX = (int)(Math.random()*401);
      myCenterY = (int)(Math.random()*401);
      myPointDirection = (int)(Math.random()*360);
    }
    void speedLimit(int limit) {
      if (myXspeed > limit) {
        myXspeed = limit;
      } else if (myXspeed < -limit) {
        myXspeed = -limit;
      }
      if (myYspeed > limit) {
        myYspeed = limit;
      } else if (myYspeed < -limit) {
        myYspeed = -limit;
      }
    }
}
