import gab.opencv.*;
import processing.video.*;
import java.awt.Rectangle;

Movie video;
OpenCV opencv;
int i = 0;

void setup() {
  size(1250, 720);
  video = new Movie(this, "i.mp4");
  
  video.loop();
  video.play();
}

void draw() {
  image(video, 0, 0);

  if (video.width == 0 || video.height == 0)
  return;
  
  opencv = new OpenCV(this, video);
  opencv.loadCascade(OpenCV.CASCADE_PROFILEFACE);
  Rectangle[] faces = opencv.detect();

  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  for (int i = 0; i < faces.length; i++) {
    rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
  }
  
  save("output/project02-h-profile-face-" + i + ".png");
  i += 1;
}

void movieEvent(Movie m) {
  m.read();
}
