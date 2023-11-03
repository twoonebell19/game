class ghost {
  float x, y, d, vx, vy;
  ghost() {
    x=random(0, width);
    y=random(0, height);
    d=random(100, 200);
    vx=random(-3, 3);
    vy=random(-2, 2);
  }
  ghost(float p, float q, float r) {
    x=p;
    y=q;
    d=r;
    vx = random(-3, 3);
    vy = random(-2, 2);
  }
  void collide(ghost b) {
    float dd;
    dd=sqrt((x-b.x)*(x-b.x)+(y-b.y)*(y-b.y));
    if (dd < (d + b.d) / 4) {
      vx = vy = 0;
      b.vx = b.vy = 0;
    }
  }
  void move() {
    x+=vx;
    y+=vy;
    if (x>width) x=0;
    if (x<0) x=width;
    if (y>height) y=0;
    if (y<0) y = height;
  }
  void Life() {
    fill(255);
    arc(x, y, 0.6*d, 0.6*d, PI, 2*PI);
    fill(0);
    circle(x-0.15*d, y-0.05*d, 0.1*d);
    fill(0);
    circle(x+0.15*d, y-0.05*d, 0.1*d);
    fill(255);
    beginShape();
    vertex(x-0.3*d, y);
    vertex(x-0.3*d, y+0.4*d);
    vertex(x-0.2*d, y+0.3*d);
    vertex(x-0.1*d, y+0.4*d);
    vertex(x, y+0.3*d);
    vertex(x+0.1*d, y+0.4*d);
    vertex(x+0.2*d, y+0.3*d);
    vertex(x+0.3*d, y+0.4*d);
    vertex(x+0.3*d, y);
    endShape();
    fill(255, 0, 0);
    beginShape();
    vertex(x-0.1*d, y+0.1*d);
    vertex(x+0.1*d, y+0.1*d);
    vertex(x, y+0.2*d);
    endShape();
  }
}
