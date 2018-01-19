void setup(){
size(1080,720);
background(255);
textSize(100);//Set text size to 64
fill(0);}
void keyPressed(){ background(255);
}
void draw(){
frameRate(5);
text("Space Bar",300,300);      
text("Reset",400,400);
//use variables to draw an ellipse
strokeWeight(5);
float r=random(360);
float g=random(360);
float b=random(360);
float a=random(360);
float diam=random(60);
float x=random(width);
float y=random(height);
 fill(r,g,b,a);
ellipse(x,y,diam,diam);
} 
  