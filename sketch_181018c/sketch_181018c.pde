// Code_1_FA18
// Week 7
// Bryan Ma

// this sketch creates 10 instances of a ball class. 
// it does this in the setup() function in a loop instead of 
//  doing it based on mouse presses as we did in class.

// review this approach, then create your own class that draws
//  a different visual to the screen with its own behavior. 
//  it could be abstract or more explicit. think about how to 
//  parameterize your object's constructor. once you've created 
//  a class like this, create a number of instances of your 
//  class on the canvas by any means you prefer.

ArrayList<Ball> balls = new ArrayList<Ball>();

void setup() {
  size(600, 600);
  for (int i = 0; i < 15; i++) {
    balls.add(new Ball(random(width), random(height)));
  }
}

void draw() {
  background(255);
  for (int i = 0; i < balls.size(); i++) {
    Ball ball = balls.get(i);
    ball.display();
    ball.update();
   
  }
}
