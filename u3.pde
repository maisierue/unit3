//U3 
//SOFIE TANG

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
  
  
}

void draw(){
  
  //hotbar
  fill (74,72,95,10);
  rect (0,0,1200,110);

  //color buttons
 fill (red);
 circle (60,30,40);
 
 fill (orange);
 circle (140,30,40);
 
 fill (lpink);
 circle (220,30,40);
  
  fill (pink);
 circle (300,30,40);
 
  fill (blue);
 circle (60,80,40);
 
 fill (green);
 circle (140,80,40);
 
 fill (yellow);
 circle (220,80,40);
  
  fill (beige);
 circle (300,80,40);
  
}
