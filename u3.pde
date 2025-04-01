//U3 
//SOFIE TANG

float slideX;
float slx = 0;

//color pallette
color red = #B82132;
color orange = #F2B28C;
color lpink = #f7c6c2;
color beige = #d9d7c2;
color pink = #f7a49e;
color green = #B1D7B4;
color yellow = #FFF0BD;
color blue = #D2E0FB;
color white = #FFFFFF;

//selection de couleur
color SELCOL;

void setup(){
  size (1200,800);
 background (235);
 strokeWeight(2);
 stroke(150);
  
//slider
  slideX = 480;  
  slx = 0;
  
}

void draw(){
  
  //hotbar
  strokeWeight (3);
  stroke(200);
  fill (74,72,95);
  rect (0,0,1200,110);

    //box
  strokeWeight(slx);
  fill(SELCOL);
  rect(350,20,20,70); //box
  
    //slider
  strokeWeight (4);
  line(400,60,580,60);
  fill (200);
  circle(slideX,60,30);

  //color buttons
 tactile(60,30,40);
 fill (red);
 circle (60,30,40);
 
 tactile(140,30,40);
 fill (orange);
 circle (140,30,40);
 
 tactile(220,30,40);
 fill (lpink);
 circle (220,30,40);
 
 tactile(300,30,40);
 fill (pink);
 circle (300,30,40);
 
 tactile(60,80,40);
 fill (blue);
 circle (60,80,40);
 
 tactile(140,80,40);
 fill (green);
 circle (140,80,40);
 
 tactile(220,80,40);
 fill (yellow);
 circle (220,80,40);
  
 tactile(300,80,40);
 fill (beige);
 circle (300,80,40);
  
  
}
//----------------------------------
void tactile (int x, int y, int r) {
    if (dist(x,y,mouseX,mouseY) < r) {
    stroke(white);
  }
  else {
    stroke (200);
  }
}
//---------------------------




void mouseReleased(){
  
  //red
  if (dist(60,30,mouseX,mouseY) < 20) {
    SELCOL = red;
  }
  
    //orange
  if (dist(140,30,mouseX,mouseY) < 20) {
    SELCOL = orange;
  }
    //lpink
  if (dist(220,30,mouseX,mouseY) < 20) {
    SELCOL = lpink;
  }
      //pink
  if (dist(300,30,mouseX,mouseY) < 20) {
    SELCOL = pink;
  }
       //blue
  if (dist(60,80,mouseX,mouseY) < 20) {
    SELCOL = blue;
  }
         //green
  if (dist(140,80,mouseX,mouseY) < 20) {
    SELCOL = green;
  }
      //yellow
  if (dist(220,80,mouseX,mouseY) < 20) {
    SELCOL = yellow;
  }
  
      //beige
  if (dist(300,80,mouseX,mouseY) < 20) {
    SELCOL = beige;
}

//slider
ctrlslide();
}
//---------------------------


//slider
void mouseDragged(){
ctrlslide();
strokeWeight(slx);
stroke(SELCOL);
line(pmouseX, pmouseY, mouseX, mouseY);

}


void ctrlslide(){
if (mouseX > 400 && mouseX < 580 && mouseY>40 && mouseY< 80){
 slideX = mouseX;}
 
 slx = map(slideX, 400, 580, 1, 15); 
}
