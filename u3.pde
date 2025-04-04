//U3 
//SOFIE TANG
PImage Bob;
boolean BobOn;//true or false
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
 Bob = loadImage("Bob.png");
 BobOn = false;
  
//slider
  slideX = 480;  
  slx = 0;
}

void draw(){
//BOBBBBBB!!1
image(Bob, 50, 50);
strokeWeight(2);
fill(200);
 rect(600,10,120,40);


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
  
  //rect buttons save
  rectactile(900,10,120,40);
    fill (200);
  rect(900,10,120,40);
      fill (200);
  fill (70);
  
  //rect buttons load
  rectactile(900,60,120,40);
    fill (200);
  rect(900,60,120,40);
  textSize(30);
  fill (70);
  
  //rect buttons clear
  rectactile(1050,15,100,80);
    fill (200);
  rect(1050,15,100,80);
  textSize(25);
  fill (70);
  text("CLEAR",1060,67);

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
//----------------------------------circle outline
void tactile (int x, int y, int r) {
    if (dist(x,y,mouseX,mouseY) < r) {
    stroke(white);
}
  else {
    stroke (200);
  }
}
//--------------------------------rectangle outline
void rectactile (int x, int y, int w, int h){
      if (mouseX> x && mouseX <x+w && mouseY > y && mouseY<y+h){
      stroke(white);
}
  else {
    stroke (200);
  }
}
//-------------------------
void mouseReleased(){
  
  //bob
 
  //rect buttons save
 // if (mouseX> 900 && mouseX <1120 && mouseY > 10 && mouseY< 50) {
  //  background (235);
//  }
  
  //rect buttons load
 // rect(900,60,120,40);
  
  //rect buttons clear
    if (mouseX> 1050 && mouseX <1150 && mouseY > 15 && mouseY<95) {
    background (235);
  }

  
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
  //BOB
  if (BobON == false){
ctrlslide();  //drawing
strokeWeight(slx);
stroke(SELCOL);
line(pmouseX, pmouseY, mouseX, mouseY);

}
else{
  image (Bob,mouseX, mouseY, 100,100);
  
}
}


void ctrlslide(){
if (mouseX > 400 && mouseX < 580 && mouseY>40 && mouseY< 80){
 slideX = mouseX;}
 
 slx = map(slideX, 400, 580, 1, 15); 
}
