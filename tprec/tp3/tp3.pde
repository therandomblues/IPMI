//https://youtu.be/bb95M7yLPQU


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
  size(800, 400);
  referencia = loadImage("data/referencia.jpg");
}

void draw() {
  background(150);
  //image(referencia,0,0,width/2,width/2);
  for (i=0; i<width; i+=100) {                           //gris
    for (ib=0; ib<width; ib+= 98) {
      push();
      translate(ib, i);
      rotate(radians(45)+frameCount*-0.1);
      scale(0.1+sin(frameCount*0.05));
      rectMode(CENTER);
      fill(color1);
      rect(0, 0, 70, 70);
      pop();
    }
  }
  for (i=50; i<width; i+=200) {                        //blanco
    for (ib=50; ib<width; ib+=100) {
      push();
      translate(ib, i);
      fill(color2);

      if (giroB == 0) {
        rotate(radians(45)+frameCount*0.1);
      } else if (giroB == 1) {
        rotate(radians(45));
      }

      rectMode(CENTER);
      rect(0, 0, 70, 70);
      pop();
    }
  }
  for (i=-50; i<width; i+=200) {                      //negro
    for (ib=50; ib<width; ib+=100) {
      push();
      translate(ib, i);
      if (giroA == 0) {
        rotate(radians(45)+frameCount*0.1);
      } else if (giroA == 1) {
        rotate(radians(45));
      }
      fill(color3);
      rectMode(CENTER);
      rect(0, 0, 70, 70);
      pop();
    }
  }
  image(referencia, 0, 0, width/2, width/2);
}
//DECLARAR UNA FUNCION QUE DEVUELVA VERDADERO O FALSO (BOOLEAN) EN CASO DE QUE EL MOUSE ESTÉ SOBRE LA IMAGEN

boolean mouseOnImage() {
  float imagenX = 0;
  float imagenY = 0;
  float imagenW = width / 2;
  float imagenH = width / 2;
  if (mouseX >= imagenX && mouseX <= imagenX + imagenW &&
    mouseY >= imagenY && mouseY <= imagenY + imagenH) {
    return true;
  } else {
    return false;
  }
}


void KILLColorChange() {
  color1 = 100;
  color2 = 255;
  color3 = 0;
}

void colorChange() {                             //para que cambie de color con una tecla
  if (color1 == 100)
  {
    color1 = 200;
  } /*else
   {
   color1 = 100;
   }*/
  if (color2 == 255) {
    color2 = 0;
  } /*else
   {
   color2 = 0;
   }*/
  if (color3 == 0) {
    color3 = 255;
  } /*else
   {
   color3 = 0;
   }
   return;*/
}

void patrgiro() {                                //Para que gire con el click
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


//USAR DICHA FUNCION PARA EL IF DEL MOUSEPRESSED :)
void mousePressed() {
  boolean MouseEnImagen = mouseOnImage();
  if (!MouseEnImagen) {
    patrgiro();
  }
}
void keyPressed() {
  if (key == 'c')
  {
    colorChange();
  }
}
void keyReleased() {
  if (key == 'c')
  {
    KILLColorChange();
  }
}
