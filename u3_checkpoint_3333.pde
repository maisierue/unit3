//Sofie Tang
//checkpoint 3/3
//squyare
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
  rect (100,100,60,40);
  
  //orange
tactile (200,100,50);
    fill (orange);
  rect (200,100,60,40);
  
  
  //pink
 tactile (300,100,50);
    fill (lpink);
  rect (300,100,60,40);
  
  //box
  stroke(pink);
  fill(SELCOL);
  rect(100,300,600,400); 
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
  if (mouseX> 100 && mouseX < 160 && mouseY > 100 && mouseY < 140) {
        SELCOL = red; 
}
  
  if (mouseX> 200 && mouseX < 260 && mouseY > 100 && mouseY < 140) {
        SELCOL = orange; 
}

   if (mouseX> 300 && mouseX < 360 && mouseY > 100 && mouseY < 140) {
        SELCOL = lpink; 
}
  
  
}
//--------------------------
