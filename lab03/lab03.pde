PImage blond;
PImage channel_orange;

void setup () {
  size(800, 800);
  blond = loadImage("images/blond.jpeg");
  channel_orange = loadImage("images/channel_orange.jpeg");
}

void draw() {
  int size = 200;
  for (int i = 0; i < width / size; i++) {
    if (i % 2 == 0) {
      image(blond, i * size, height / 2 - 100, size, size);
    } else {
      image(channel_orange, i * size, height / 2 - 100, size, size);
    }
  }
  
  stroke(0);
  strokeWeight(2.5);
  line(720, 780, 730, 780);
  line(720, 785, 730, 785);
  line(720, 790, 730, 790);
  line(720, 780, 720, 790);
  
  line(735, 790, 745, 790);
  line(735, 780, 735, 790);
}

void keyPressed() {
  save("lab03.png");
}
