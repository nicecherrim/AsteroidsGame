//your variable declarations here
Spaceship bob = new Spaceship();
Star [] stars;
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
public void setup() 
{
  size(600,600);
  background(0);
  stars = new Star[250];
  for(int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  for(int i = 0; i < 15; i++) {
    asteroids.add(new Asteroid());
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
  for(int i = 0; i < asteroids.size(); i++) {
    asteroids.get(i).show();
    asteroids.get(i).move();
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
