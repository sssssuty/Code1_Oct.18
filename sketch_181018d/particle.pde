class Particle {
  float posX;
  float posY;
  float Xspeed;
  float Yspeed;
  float life;

  Particle(float posX, float posY) {
    this.posX = posX;
    this.posY = posY;
    this.Xspeed = random(-5, 5);
    this.Yspeed = random(-5, 5);
    life = 50;
  }

  void display() {
    ellipse(this.posX, this.posY, life, life);
  }

  void update() {
    life--;
    this.posX += this.Xspeed;
    this.posY += this.Yspeed;

    // check if it goes off
    if (this.posX > width || this.posX < 0) {
      this.Xspeed *= -1;
    }
    if (this.posY > height || this.posY < 0) {
      this.Yspeed *= -1;
    }
    
    noStroke();
    fill(0, (int(map(posY, 0, 255, 0, height))), (int(map(posX, 0, 255, 0,width))), life);
  }
}
