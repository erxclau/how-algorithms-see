//import gab.opencv.*;
//import processing.video.*;

//Movie video;
//OpenCV opencv;

//void setup() {
//  size(512, 512);
//  video = new Movie(this, "train.mp4");
//  opencv = new OpenCV(this, 512, 512);

//  opencv.startBackgroundSubtraction(5, 3, 0.5);

//  video.loop();
//  video.play();
//}

//void draw() {
//  image(video, 0, 0);

//  if (video.width == 0 || video.height == 0)
//    return;

//  opencv.loadImage(video);
//  opencv.updateBackground();

//  opencv.dilate();
//  opencv.erode();

//  noFill();
//  stroke(255, 0, 0);
//  strokeWeight(3);
//  for (Contour contour : opencv.findContours()) {
//    contour.draw();
//  }
//}

//void movieEvent(Movie m) {
//  m.read();
//}

import gab.opencv.*;
import processing.video.*;

OpenCV opencv;
Movie video;

void setup() {
  size(512, 512);
  video = new Movie(this, "train.mp4");
  opencv = new OpenCV(this, 512, 512);
  video.loop();
  video.play();
}

void draw() {
  background(0);

  if (video.width == 0 || video.height == 0)
    return;

  opencv.loadImage(video);
  opencv.calculateOpticalFlow();

  image(video, 0, 0);
  translate(video.width, 0);
  stroke(255, 0, 0);
  opencv.drawOpticalFlow();

  PVector aveFlow = opencv.getAverageFlow();
  int flowScale = 50;

  stroke(255);
  strokeWeight(2);
  line(video.width/2, video.height/2, video.width/2 + aveFlow.x*flowScale, video.height/2 + aveFlow.y*flowScale);
}

void movieEvent(Movie m) {
  m.read();
}
