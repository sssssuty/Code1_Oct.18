// Code_1_FA18
// Week 7
// Bryan Ma

// this is the leap we made from a single arraylist of ball objects,
//  to an arraylist of particle generators, all which possess their own
//  arraylist of particle objects. clicking on the screen creates a new
//  object of the Generator class. 

// modify the behavior of the particle (and potentially the particle 
//  generator to create an effect that simulates some kind of natural 
//  phenonema. think about the youtube video we saw in class - 
//  (https://www.youtube.com/watch?v=heW3vn1hP2E) that shows how a few 
//  simple changes to a basic particle system can create some convincing 
//  effects, like fire, smoke, and water. 
// see how far you can get and be creative. maybe it could be raindrops on
//  a window, stars zooming by in space, a waterfall? Use color, opacity,
//  size, and lifetimes to control things. try mapping the values of your 
//  parameters to the lifetime, just as in the example each particle gets
//  smaller as it reaches the end of its life. try changing particle speeds,'
//  directions, and other behavior.

ArrayList<Generator> generators;

void setup() {
  size(600, 600);
  generators = new ArrayList<Generator>();
}

void draw() {
  background(255);
  for (int i = 0; i < generators.size(); i++) {
    Generator g = generators.get(i);
    g.addParticles();
    g.drawParticles();
  }
}

void mousePressed() {
  generators.add(new Generator(mouseX, mouseY));
}
