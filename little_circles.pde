//"Little Circles"
//Alana Ah Quin
//If you hold the mouse the circles will disappear
void setup(){
size(400,400);
smooth();
noStroke();
background(255);
}
void draw(){
  float radius=50+30*sin(frameCount*0.05f);
  fill(255,25);
  rect(0,0,width,height);
  fill(0);
  delay(75);
  filter(BLUR,1);

 
if(mousePressed){
  stroke(255,255,255);
  fill(0,0,0);
}
else{
  stroke(0,0,0);
  fill(random(255),random(255),random(255),random(255));
  ellipse(mouseX,mouseY,radius,radius);
  }
}