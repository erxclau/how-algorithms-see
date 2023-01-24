// Referencing a piece by Piet Mondrian
// https://www.piet-mondrian.org/images/paintings/composition-with-large-red-plane-yellow-black-gray-and-blue.jpg

// lab01, Eric Lau (ericlau)
// 2022-01-11

// Use at least 2 different shapes, at least 3 different colors, make use of the 'fill' / 'noFill' / 'stroke' / 'noStroke' / 'strokeWeight' functions.
// Submit a screenshot of your drawing (jpg or png file types only) to complete this assignment.

// fill, noFill, stroke, strokeWeight, noStroke
// another shape

size(800, 800);

background(225, 225, 225);

// blue
noStroke();
fill(150, 200, 225);
rect(-50, -50, 225, 150);
rect(-50, 300, 200, 300);
rect(300, 500, 200, 100);
rect(750, 0, 50, 600);

stroke(0);
strokeWeight(10);

rect(300, 600, 200, 100);

// white
noFill();
rect(-100, 100, 200, 200);
rect(175, -25, 325, 125);
rect(500, 300, 125, 200);
rect(625, 300, 125, 200);
rect(500, 500, 250, 100);
rect(100, 700, 200, 125);
rect(300, 750, 450, 100);

// black
fill(0);
square(100, 500, 200);
rect(300, 700, 200, 50);

// orange
fill(240, 125, 24);
rect(0, 600, 100, 300);
rect(500, -25, 250, 125);
rect(500, 100, 250, 200);

// dark blue
fill(0, 25, 50);
rect(500, 600, 250, 150);

// red
fill(#C14A4A);
square(100, 100, 400);
rect(750, 600, 75, 225);

stroke(0);
strokeWeight(2.5);
line(320, 780, 330, 780);
line(320, 785, 330, 785);
line(320, 790, 330, 790);
line(320, 780, 320, 790);

line(335, 790, 345, 790);
line(335, 780, 335, 790);

save("lab01.png");
