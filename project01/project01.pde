//Project 1 Create an image dataset

//global variables

//Define an array of images
PImage [] myImages = new PImage[64];

//Defines an array to store words;
String [] labels;

//Define how many columns and rows the grid has
int columns = 8;
int rows = 8;

//Create a counter to track the grid
int currentX = 0;
int currentY = 0;

float imageOffset = 4.5f;
float labelOffset = 4.0f;

//defines the image size for distribution of images, not size
int imageSizeX = 235;
int imageSizeY = 132;

//setup function - initializes - executes once
void setup() {
  size(1920, 1080);

  //loops through image array and loads with images from folder
  for (int i = 0; i < myImages.length; i++) {
    myImages[i] = loadImage("img/img-"+(i+1)+".jpg");
  }

  //loads the text data from the file
  labels = loadStrings("data.txt");

  //test that data has loaded correctly
  println(labels);
  println(labels.length);
}

//draw function - loops - executes every frame
void draw() {
  background(0);

  //controls position of image
  float yPosition = 0.0f;
  float xPosition = 0.0f;

  //resets the counter each frame
  currentX = 0;
  currentY = 0;

  //loops through image array
  for (int i = 0; i < myImages.length; i++) {

    //calulates position of image
    xPosition = imageOffset + (currentX * (imageSizeX + imageOffset) );
    yPosition = imageOffset + (currentY * (imageSizeY + imageOffset) );

    //draws the images
    image(myImages[i], xPosition, yPosition);

    //counter in x increases after every image
    currentX ++;

    //counter in y increases after every column
    if (currentX == columns) {
      currentX = 0;
      currentY++;
    }
  }
  //controls position of label graphic
  float xPositionLabel = 0.0f;
  float yPositionLabel = 0.0f;

  //resets the counter each frame
  currentX = 0;
  currentY = 0;

  for (int i = 0; i < labels.length; i++) {

    //calulates position of image
    xPositionLabel = labelOffset + (currentX * (imageSizeX + labelOffset) );
    yPositionLabel = labelOffset + (currentY * (imageSizeY + labelOffset) );

    //draws label graphic
    fill(0);
    noStroke();
    rect(xPositionLabel, yPositionLabel, 250, 20);

    //draws text label
    fill(255);
    textSize(15);
    text(labels[i], xPositionLabel, yPositionLabel + 15);

    //counter in x increases after every label
    currentX ++;

    //counter in y increases after every column
    if (currentX == columns) {
      currentX = 0;
      currentY++;
    }
  }
}

void keyPressed() {
  if (key == 's' || key == 'S') {
    save("project01.jpg");
  }
}
