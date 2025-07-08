PImage referencia;
float cuadradoX;
int cuadradoY;
int cuadradoW;
int cuadradoH;
int color1 = 100;
int color2 = 255;
int color3 = 0;
int i;
int ib;
int giroA = 0;
int giroB = 1;

void setup()
{
size(800,400);
background(255);
referencia = loadImage("data/referencia.jpg");
}

void draw() {
  background(150);
  //image(referencia,0,0,width/2,width/2);
  for(i=0; i<width; i+=98){
    for(ib=0; ib<width; ib+=98){
    push();
    translate(ib,i);
    rotate(radians(45)+frameCount*-0.1);
    scale(0.1+sin(frameCount*0.05));
    rectMode(CENTER);
    fill(color1);
    rect(0, 0, 70, 70);
    pop();

    }
  }
  for(i=50; i<width; i+=98){
    for(ib=50; ib<width; ib+=98){
    push();
    translate(ib,i);
    fill(color2);
    
    if(giroB == 0){
    rotate(radians(45)+frameCount*0.1);
    } else if (giroB == 1){
    rotate(radians(45));
  }

    rectMode(CENTER);
    rect(0, 0, 70, 70);
    pop();

    }
  }
  for(i=-50; i<width; i+=198){
    for(ib=50; ib<width; ib+=98){
    push();
    translate(ib,i);
    if(giroA == 0){
    rotate(radians(45)+frameCount*0.1);
    } else if (giroA == 1){
    rotate(radians(45));
  }
    fill(color3);
    rectMode(CENTER);
    rect(0, 0, 70, 70);
    pop();
    }
  }
  //image(referencia,0,0,width/2,width/2);
}

void mousePressed(){
 if (giroA == 0)
 {
   giroA = 1;
 } else {
 giroA = 0;
 }
  if (giroB == 0)
 {
   giroB = 1;
 } else {
 giroB = 0;
 }
 
}
