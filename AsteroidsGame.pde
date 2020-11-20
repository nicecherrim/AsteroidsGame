
//your variable declarations here
Spaceship bob = new Spaceship();
Star [] stars;
public void setup() 
{
  size(400,400);
  background(0);
  stars = new Star[75];
  for(int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  fill(255);
  bob.show();
  bob.move();
  bob.speedLimit(12);
  for(int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
}

public void keyPressed() {
  if (key == 'h') {
    bob.hyperspace();
  }
  if (key == 'w') {
    bob.accelerate(0.5);
  }
  if(key == 'a') {
    bob.turn(-5);
  }
  if(key == 'd') {
    bob.turn(5);
  }
}
