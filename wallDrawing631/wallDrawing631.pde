// WALL DRAWING 631
size(700,700);
background(255);

// A wall is divided into two equal parts
// by a line drawn from corner to corner.
int bandWidth = 20;
strokeWeight(bandWidth);
strokeCap(PROJECT);
boolean alt = true;

// Left: alternating diagonal black and white 8-inch (20 cm) bands from the lower left.
for(int y=0; y<height*2; y+=bandWidth){
  if(alt){
    stroke(0);
  } else {
    stroke(255);
  }
  line(0, y, width, y-height);
  alt = !alt;
}

// Right: alternating diagonal black and white 8-inch (20 cm) bands from the upper right.
for(int x=0; x<width; x+=bandWidth){
  if(alt){
    stroke(0);
  } else {
    stroke(255);
  }
  line(x, 0, width, height-x);
  alt = !alt;
}

// Sol LeWitt
// July 1990