class frog {
  float x, y, d, vx, vy;
  frog() {
    x = random(0, width);
    y = random(0, height);
    d = random(100, 200);
    vx = random(-3, 3);
    vy = random(-2, 2);
  }
  frog(float p, float q, float r) {
    x = p;
    y = q;
    d = r;
    vx = random(-3, 3);
    vy = random(-2, 2);
  }
  void collide(frog b) {
    float dd;
    dd=sqrt((x-b.x)*(x-b.x)+(y-b.y)*(y-b.y));
    if (dd < (d + b.d)/4) {
      vx = vy = 0;
      b.vx = b.vy = 0;
    }
  }
  void fr() {
    x += vx;
    y += vy;
    if (x>width) x=0;
    if (x<0) x=width;
    if (y>height) y=0;
    if (y<0) y = height;
  }
  void ro() {
    noStroke();
    fill(0, 130, 0);
    stroke(0, 0, 0);
    ellipse(x, y, d*0.6, d*0.335); //타원

    fill(0, 130, 0);
    stroke(0, 0, 0);
    circle(x+d*0.2, y-d*0.2, d*0.3); //왼쪽눈
    circle(x-d*0.2, y-d*0.2, d*0.3); //오른쪽 눈

    fill(255, 255, 255);
    stroke(0, 0, 0);
    circle(x-d*0.2, y-d*0.2, d*0.22); //왼쪽 흰눈동자
    circle(x+d*0.2, y-d*0.2, d*0.22); //오른쪽 흰 눈동자

    fill(0, 0, 0);
    stroke(0, 0, 0);
    circle(x-d*0.2, y-d*0.2, d*0.15); //왼쪽 검은 눈동자
    circle(x+d*0.2, y-d*0.2, d*0.15); //오른쪽 검은 눈동자

    fill(255, 255, 255);
    stroke(0, 0, 0);
    circle(x-d*0.17, y-d*0.17, d*0.05); //왼쪽 흰 눈망울
    circle(x+d*0.17, y-d*0.17, d*0.05); //오른쪽 흰 눈망울

    fill(255, 0, 0);
    beginShape();
    curveVertex(x-d*5, y-d*0.11); // 시작점
    curveVertex(x-d*0.01, y+d*0.05); // 중간 제어점 1 (위)
    curveVertex(x-d*0.01, y+d*0.05); // 중간 제어점 2 (위)
    curveVertex(x+d*5, y-d*0.11); // 끝점
    endShape(); //입술
  }
}
