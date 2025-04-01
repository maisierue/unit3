//U3 
//SOFIE TANG
//Checkpoint 3/3

color white = #FFFFFF;
color blue = #C9E2FF;
color pink = #FFC9E9;

void setup() {
  size (800,600);
}

void draw(){
  
 // //button 1 cube
 //   fill(white); 
  stroke (2);
//// rect (200,100,100,100);
  
  //button 2 rect
    fill(pink); 
 stroke (2);
 rect (100,100,200,100);
  
  //button 3
  //  fill(blue); 
//  stroke (2);
//  rect (200,300,100,60);
}


void mouseReleased(){
  if (mouseX> 100 && mouseX < 300 && mouseY > 100 && mouseY < 200) {
    
  }
}
