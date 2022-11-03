PImage mainImage;
PImage brushStroke;

void setup() {
  size(533,799);
  background(255,255,255);
  mainImage = loadImage("red2.jpg");
  brushStroke = loadImage("stroke13.png");
  //image(mainImage,0,0);
  frameRate(1000);
}

void draw() {
  int randomX = int(random(width));
  int randomY = int(random(height));
  int pixelIndex = randomX + randomY*width;
  color c = mainImage.pixels[pixelIndex];
  //fill(c,99);
  //stroke(c,100);
  //noStroke();
  //rect(randomX,randomY,randomX+random(60)-30,randomY+random(60)-30);
  //ellipse(randomX,randomY,randomX+random(60)-30,randomY+random(60)-30);
  //line(randomX,randomY,randomX+30,randomY+30);
  tint(c,200);
  translate(randomX,randomY);
  rotate(random(2*PI));
  //line(randomX,randomY,randomX+random(60)-30,randomY+random(60)-30);
  image(brushStroke, -brushStroke.width/2,-brushStroke.height/2);
}

void mouseReleased() {
 saveFrame(); 
}
