void setup () {
  size(500, 500);
}

void draw() {
  noStroke();
  background(0);
  int sz = 10;
  for (int i = 0; i < width / sz; i++) {
    for (int j = 0; j < height / sz; j++) {
      fill(i * sz, j * sz, (i + j) * sz);
      rect(i * sz, j * sz, sz, sz);
    }
  }
};

void keyPressed() {
  save("lab02.png");
}
