import processing.pdf.*;
int cols,rows;
float cellW,cellH;
color[] colors= {#F29580, #F28177, #260505, #A62121, #591818};

 void setup() {
  size(1200,800);
  beginRecord(PDF,"out/ranGrid.pdf");
  //background(255);
  background(#A64037);
  //noStroke();
  
  cols=15*2/2;
  rows=10*2/2;
  cellW=width/cols;
  cellH=height/rows;
  
  noLoop();
 }
 
 void draw() {
   //ellipse(width/2,height/2,100,100);
   for(int i=0;i<cols;i++)  {
     for (int j=0;j<rows;j++)  {
       //float r = random(255);
       //float g = random(255);
       //float b = random(255);
       //fill(r,g,b);
       int r = int(random(5));
       float circleSize = random(cellW);
       //println(r);
       fill(colors[r]);
       int randomPos = int(random(2));
       if (randomPos == 0){
         ellipse(i*cellW+cellW/2,j*cellH+cellH/2,random(cellW),random(cellH));
         //ellipse(i*cellW+cellW/2,j*cellH+cellH/2,circleSize,circleSize);
         r = int(random(5));
         fill(colors[r]);
         circleSize = random(cellW);
         ellipse(i*cellW+cellW/2,j*cellH+cellH/2,circleSize/2,circleSize/2);
         //rect(i*cellW,j*cellH,cellW,cellH);
       }
       else {
        //rect(i*cellW+cellW/2,j*cellH+cellH/2,circleSize,circleSize);
         rect(i*cellW+cellW/2,j*cellH+cellH/2,random(cellW),random(cellH));
         r = int(random(5));
         fill(colors[r]);
         circleSize = random(cellW);
        rect(i*cellW+cellW/2,j*cellH+cellH/2,circleSize/2,circleSize/2);
       }
     }
   }endRecord();
 }
