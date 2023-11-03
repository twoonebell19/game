frog [] aa;
ghost [] yy;
void setup() {
  size(1200, 800);
  aa = new frog[3];
  yy = new ghost[5];
  for (int i=0; i<3; i++) aa[i] = new frog();
  for (int i=0; i<5; i++) yy[i] = new ghost();
}
void draw() {
  background(0, 255, 255);
  for (int i=0; i<3; i++) {
    if (i!=2) {
      for (int j=i+1; j<3; j++) {
        aa[i].collide(aa[j]);
      }
    }
    aa[i].fr();
    aa[i].ro();
  }
  for (int i=0; i<5; i++) {
    if (i!=4) {
      for (int j=i+1; j<5; j++) {
        yy[i].collide(yy[j]);
      }
    }
    yy[i].move();
    yy[i].Life();
  }
}
void mousePressed() { // sprint 2
  aa[2].x = mouseX;
  aa[2].y = mouseY;
}
void keyPressed() {   // sprint 2
  if (key == 'a') yy[4].x -= 15;
  else if (key == 'd') yy[4].x += 15;
  else if (key == 's') yy[4].y += 15;
  else if (key == 'w') yy[4].y -= 15;
}
