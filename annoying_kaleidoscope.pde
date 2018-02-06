//press and draw, hover and deletes
//Alana
import processing.sound.*;
SawOsc saw;

void setup() {
  size(400, 400, P3D);
  background(255);
  frameRate(20);
  smooth();
  saw=new SawOsc(this);
  saw.play();
}

void draw() {
  rectMode(CENTER);
  fill(0);
  noStroke(); 
  rect(width/2,height/2,5,5);
  stroke(10);
  if(mousePressed) {
  strokeWeight(20);
    
   stroke(0,0,255); // dark blue
   line(pmouseX,pmouseY,mouseX,mouseY);
   stroke(0,0,204); // cerulean
   line(width-pmouseX,height-pmouseY,width-mouseX,height-mouseY);
    
   stroke(0,0,255); 
   line(pmouseY,height-pmouseX,mouseY,height-mouseX);
   
   stroke(102,102,255);
   line(width-pmouseY,pmouseX,width-mouseY,mouseX);
    
  } else valEllipse(mouseX, mouseY, pmouseX, pmouseY);
}

void valEllipse(int x, int y, int px, int py) {
  fill(255);
  float speed = abs(x-px) + abs(y-py);
  noStroke(); // act like rubber
  ellipse(x, y, speed, speed);
}