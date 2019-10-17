int w;
int x;
int y;
int z;
int a;
int b;
int c;
int d;
int e;
color green = #66CE1D;
color dgreen = #0A7601;
int cloudx = 0;
int cloud2x = 0;
int robox = 0;
int robos = 4;

void setup() {
  size(1000,800);
  w=-250;
  x=250;
  y=750;
  z=1250;
  
  a=0;
  b=250;
  c=500;
  d=750;
  e=1000;
}



void draw() {
  background(60,180,255,0);


  
  //floaty thing
  pushMatrix();
  translate(cloudx,0);
  cloudx = cloudx+1;
  cloud();
  if (cloudx >= 1100) {
    cloudx = -200;
  }
  popMatrix();
 
  pushMatrix();
  translate(cloud2x,0);
  cloud2x = cloud2x+1;
  cloud2();
  if (cloud2x >= 600) {
    cloud2x = -700;
  }
  popMatrix();

  
  //back mountains
  fill(green);
  stroke(green);
  ellipse(w,550,500,500);
  ellipse(x,550,500,500);
  ellipse(y,550,500,500);
  ellipse(z,550,500,500);
  
  w=w+2;
  x=x+2;
  y=y+2;
  z=z+2;
  
  if (z >=1500) {
    z=-500;
  }
  
   if (y >=1500) {
    y=-500;
  }
  
   if (x >=1500) {
    x=-500;
  }
  
   if (w >=1500) {
    w=-500;
   }
   
   
   
  
    //front mountains
  fill(dgreen);
  noStroke();
  ellipse(a,600,250,250);
  ellipse(b,600,250,250);
  ellipse(c,600,250,250);
  ellipse(d,600,250,250);
  ellipse(e,600,250,250);
  
  a=a+3;
  b=b+3;
  c=c+3;
  d=d+3;
  e=e+3;
  
  if (a >=1125) {
    a=-125;
  }
  
   if (b >=1125) {
    b=-125;
  }
  
   if (c >=1125) {
    c=-125;
  }
  
   if (d >=1125) {
    d=-125;
  }
  
   if (e >=1125) {
    e=-125;
  }
  
  
  //ground
  fill(#E4E831);
  stroke(#E4E831);
  rect(0,600,1000,200);
  
  
  //robot
  pushMatrix();
  translate(robox,50);
  scale(0.9,0.9);
  robo();
  
  
  robox = robox+robos;
  
    if (robox >= 900)   robos = -4;
    if (robox <= -400) robos = 4;

  popMatrix();
  
}







void cloud(){
  fill(255,255,255);
  stroke(255,255,255);
  ellipse(100,100,100,100);
  ellipse(140,150,100,100);
  ellipse(60,150,100,100);
   
}  

void cloud2(){
  fill(255,255,255);
  stroke(255,255,255);
  ellipse(650,300,100,100);
  ellipse(690,350,100,100);
  ellipse(610,350,100,100);
   
}  

void robo(){
  //wheel black
  fill(40,40,40);
  stroke(40,40,40);
  ellipse(300,670,100,100);

  //wheel grey
  fill(124,124,124);
  stroke(124,124,124);
  ellipse(300,670,80,80);

  //hands
  fill(124,124,124);
  stroke(124,124,124);
  strokeWeight(10);
  line(405,460,405,575);
  line(195,460,195,575);

  line(395,575,415,575);
  line(185,575,205,575);

  //hand
  fill(124,124,124);
  stroke(124,124,124);
  strokeWeight(10);
  line(230,475,210,475);
  line(370,475,390,475);
  
  fill(10,10,10);
  stroke(10,10,10);
  rect(390,460,30,90,5);
  rect(180,460,30,90,5);

  //antenna
  fill(124,124,124);
  stroke(124,124,124);
  strokeWeight(4);
  line(300,350,360,250);
  line(300,360,370,390);
  line(300,370,240,310);

  //neck
  line(275,375,275,500);
  line(300,375,300,500);
  line(325,375,325,500);

  //body
  fill(0,0,0);
  stroke(0,0,0);
  rect(235,450,130,225,8);

  //body misc.
  fill(124,124,124);
  stroke(124,124,124);
  strokeWeight(0);
  rect(232,500,136,10);

  fill(255,255,255);
  stroke(255,255,255);
  ellipse(270,540,14,14);

  fill(0,0,0);
  stroke(0,0,0);
  ellipse(270,540,7,7);
    
  fill(255,255,255);
  stroke(255,255,255);
  ellipse(270,590,14,14);

  fill(0,0,0);
  stroke(0,0,0);
  ellipse(270,590,7,7);

  fill(255,255,255);
  stroke(255,255,255);
  ellipse(270,640,14,14);

  fill(0,0,0);
  stroke(0,0,0);
  ellipse(270,640,7,7);

  //head
  fill(0,0,0);
  stroke(0,0,0);
  ellipse(300,350,100,100);

  //eyeball
  fill(255,255,255);
  stroke(255,255,255);
  ellipse(315,345,40,40);

  //iris
  fill(0,0,0);
  stroke(0,0,0);
  ellipse(320,345,10,10);

  //light
  fill(12,192,0);
  stroke(12,192,0);
  ellipse(340,470,10,10);

  //head misc
  fill(122,122,122);
  stroke(122,122,122);
  ellipse(280,330,14,14);

  fill(0,0,0);
  stroke(0,0,0);
  ellipse(280,330,7,7);
}
