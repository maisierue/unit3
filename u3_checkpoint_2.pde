//U3 Checkpoint 2/3
//Sofie T
float slideX;

void setup(){
  size(600,400); 
  slideX = 300;
  
}

void draw(){
  background (200);
  strokeWeight(2);
  line(100,200,500,200);
  circle(slideX,200,30);
  
}

void mouseDragged(){
ctrlslide();
}

void mouseReleased(){
ctrlslide();
}

void ctrlslide(){
if (mouseX > 100 && mouseX < 500 && mouseY>175 && mouseY< 225){
 slideX = mouseX;}
}
