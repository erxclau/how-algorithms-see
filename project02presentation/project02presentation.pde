
//declare images
PImage img01; 
PImage img02; 
PImage img03; 
PImage img04; 
PImage img05; 
PImage img06;
PImage img07;

//setup function - initializes - executes once
void setup() {
  size(1920, 1080);

  //file path to images in data folder
  img01 = loadImage("data/01-half.png");
  img02 = loadImage("data/02-half.png");
  img03 = loadImage("data/03-half.png");
  img04 = loadImage("data/04-half.png");
  img05 = loadImage("data/05-half.png");
  img06 = loadImage("data/06-half.png");
  img07 = loadImage("data/07-half.png");
  
}

void draw() {
  background(255);
  
  //postion of images in window
  image(img01, -50, 436 - 360 / 2 - 100);
  image(img02, 450, 436 - 360 / 2 - 100);
  image(img03, 950, 436 - 360 / 2 - 100);
  image(img04, 1450, 436 - 360 / 2 - 100);
  image(img05, 0 + 200, 436 + 360 / 2 - 100);
  image(img06, 500 + 200, 436 + 360 / 2 - 100);
  image(img07, 1000 + 200, 436 + 360 / 2 - 100);
}

//press s to export the final image
void keyPressed() {
  if (key == 's' || key == 'S') {
    save("savedImages/image01.jpg");
  }
}
