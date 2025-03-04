//Sofie Tang
//checkpoint 3.1
//circle buttons

//colors 
color red = #B82132;
color orange = #F2B28C;
color lpink = #f7c6c2;
color pink = #f7a49e;
color white = #FFFFFF;


//color selection
color SELCOL;

void setup () {
  size (800,800);
  stroke(pink);
  strokeWeight(4);
  background (225);
  SELCOL = 255;
}

void draw () {
  
  //buttons
  //red
tactile (100,100,50);
    fill (red);
  circle (100,100,60);
  
  //orange
tactile (200,100,50);
    fill (orange);
  circle (200,100,60);
  
  
  //pink
 tactile (300,100,50);
    fill (lpink);
  circle (300,100,60);
  
  
  stroke(pink);
  fill(SELCOL);
  rect(100,300,600,400); //box
}
//---------------------------

void tactile (int x, int y, int r) {
    if (dist(x,y,mouseX,mouseY) < r) {
    stroke(white);
  }
  else {
    stroke (pink);
  }
//---------------------------


}

void mouseReleased(){
  
  //red
  if (dist(100,100,mouseX,mouseY) < 50) {
    SELCOL = red;
  }
  
    //orange
  if (dist(200,100,mouseX,mouseY) < 50) {
    SELCOL = orange;
  }
    //lpink
  if (dist(300,100,mouseX,mouseY) < 50) {
    SELCOL = lpink;
  }
  
}
//---------------------------
