class Star //note that this class does NOT extend Floater
{
  private float myX, myY;
  private float mySize;
  public Star() {
    myX = (float)(Math.random()*405);
    myY = (float)(Math.random()*405);
    mySize = (float)(Math.random()*5);
  }
  public void show() {
    fill(255);
    ellipse(myX,myY, mySize, mySize);
  }
}
