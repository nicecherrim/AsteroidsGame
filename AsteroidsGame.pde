//your variable declarations here
Spaceship bob = new Spaceship();
Star [] stars;
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
//usign the booleans to trigger movement makes it smoother
boolean w = false;
boolean a = false;
boolean d = false;
public void setup() 
{
  size(600,600);
  background(0);
  //add stars (just the array)
  stars = new Star[250];
  for(int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  //add asteroids to the array
  for(int i = 0; i < 15; i++) {
    asteroids.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  fill(255);
  //ship functions
  bob.show();
  bob.move();
  bob.speedLimit(12);
  //show stars
  for(int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
  //show and move asteroids
  //also check each asteroid with the ship for collision
  for(int i = 0; i < asteroids.size(); i++) {
    asteroids.get(i).show();
    asteroids.get(i).move();
    float shipHitbox = dist((float)bob.getMyX(), (float)bob.getMyY(), (float)asteroids.get(i).getX(), (float)asteroids.get(i).getY());
    if (shipHitbox < 25) {
      asteroids.remove(i);
    }
  }
  //display/move any bullets
  //check each bullet with all asteroids for collision
  for(int i = 0; i < bullets.size(); i++) {
    bullets.get(i).show();
    bullets.get(i).move();
    for(int j = 0; j < asteroids.size(); j++) {
      float bulletHitbox = dist((float)bullets.get(i).getX(), (float)bullets.get(i).getY(), (float)asteroids.get(j).getX(), (float)asteroids.get(j).getY());
      if (bulletHitbox < 25) {
        asteroids.remove(j);
      }
    }
  }
  //smoother movement for ship
  if(a == true) {
    bob.turn(-5);
  } else if (d == true) {
    bob.turn(5);
  }
  if (w == true) {
    bob.accelerate(0.2);
  }
}

//triggers controls
public void keyPressed() {
  if (key == 'h') {
    bob.hyperspace();
  }
  if (key == 'w') {
    //bob.accelerate(0.5);
    w = true;
  }
  if(key == 'a') {
    //bob.turn(-5);
    a = true;
  } else
  if(key == 'd') {
    //bob.turn(5);
    d = true;
  }
  if(key == ' ') {
    bullets.add(new Bullet(bob));
  }
}

//turns movement keys "off" so ship doesn't spin/ accelerate forever without user input
public void keyReleased() {
  if (key == 'w') {
    w = false;
    bob.turn(0);
  }
  if(key == 'a') {
    a = false;
  } else
  if(key == 'd') {
    d = false;
  }
}
