int pagnum;
int tiempo;
PImage disloca2;
PImage disloca3;
PImage disloca4;
PFont doktrin;
float colortransicion1;
float colortransicion2;
float colortransicion3;


void setup(){
  size(640, 480);
  disloca2 = loadImage("data/disloca2.jpg");
  disloca3 = loadImage("data/disloca3.jpg");
  disloca4 = loadImage("data/disloca4.jpg");
  tiempo = 0;
  pagnum = 0;
  frameRate(30);
  doktrin = createFont("data/docktrin.ttf",48);
}

void draw()
{
  //presentación
  if (pagnum == 0) 
  {
 //Título
   background(255);
   textFont( doktrin );
   float opacidad = map(tiempo,0,25,0,255);
   fill(0,opacidad);
   textAlign(CENTER,CENTER);
   textSize(50);
   text("Dislocaciones Espaciales", width/2, 25); 
 //cuerpo
   fill(0);
   textAlign(LEFT,CENTER);
   textSize(20);
   text("¡Hola! Bienvenido a la presentación de Elias del Rio sobre\nlas Dislocaciones Espaciales, para el TP2 de IPMI.", 100, 100); 
   textAlign(CENTER,CENTER);
   textSize(25);
   opacidad = map(tiempo,0,25,0,250);
   text("Sin mas que añadir...", width/2, 150); 
   fill(opacidad,0,0);
   textAlign(CENTER,CENTER);
   textSize(40);
   text("¡Empezemos!", width/2, height/2); 
  } else 
  //Pagina 1
  if (pagnum == 1) 
  {
   background(0);
   image(disloca2, 100,150,489,317);
   colortransicion1 = map(tiempo,0,25,255,250);
   colortransicion2 = map(tiempo,0,25,255,90);
   colortransicion3 = map(tiempo,0,25,255,65);
   fill(colortransicion1,colortransicion2,colortransicion3);
   textAlign(CENTER,CENTER);
   textSize(50);
   text("¿En que consiste?", width/2, 25);
   //cuerpo
   colortransicion1 = map(tiempo,0,25,0,250);
   fill(colortransicion1);
   textAlign(LEFT,CENTER);
   textSize(20);
   text("Es una escultura virtual hecha a base de un teléfono,\ndonde se tiene como principal enfoque el movimiento\nconstante del objeto para conseguir hacer una forma\ncomo la que se ven en las imágenes.", 100, 100); 
  } else 
  //Pagina 2
  if (pagnum == 2) 
  {
   colortransicion2 = map(tiempo,0,25,255,200);
   background(colortransicion2);
   image(disloca3, 100,150,489,317);
   //cuerpo
   colortransicion1 = map(tiempo,0,25,0,250);
   fill(colortransicion1);
   textAlign(LEFT,CENTER);
   textSize(20);
   text("De esto se hace lo siguiente: el performer hace que el\nteléfono interactúe una red social con el fin de usar\nlos fotogramas que el teléfono dibujó para tapizar\nla escultura en forma de texturas", 100, 100); 
  } else
  if (pagnum == 3) {
   background(0);
   float Y = map(tiempo,0,200,0,250);
   fill(250);
   textAlign(CENTER,CENTER);
   textSize(50);
   text("¿qUÉ rEPRESENTA ESTO?", width/2, Y);
  } else
    if (pagnum == 4) 
  {
   background(colortransicion2);
   image(disloca4, 100,150,489,317);
   //cuerpo
   fill(colortransicion1);
   textAlign(LEFT,CENTER);
   textSize(20);
   text("La escultura busca cuestionar la fluidez entre dos\nespacios promovidos por el mismo mercado, pero que\npuede acarrear problemas relacionados a la\nmotricidad o disectamente a las salud", 100, 50); 
  } else
  
  if (pagnum == 5){
  background(255);
   colortransicion1 = map(tiempo,0,25,255,250);
   colortransicion2 = map(tiempo,0,25,255,90);
   colortransicion3 = map(tiempo,0,25,255,65);
   fill(colortransicion1,colortransicion2,colortransicion3);
   textAlign(CENTER,CENTER);
   textSize(50);
   text("¡Eso Es Todo!", width/2, 25);

  fill(0);
  textAlign(LEFT,CENTER);
  textSize(20);
  text("Gracias poR ver!!\n\nsi querés verlo una vez más pulsá ese botón", 100, 70); 

  float distancia = dist(100, 200, mouseX, mouseY);

  if ( distancia < 40 ) {
    //estoy dentro
    fill(0,255,0); //verde
  } else {
    //estoy fuera
    fill(200); //gris
  }
  ellipse(100,200,80,80);
  }
  
  
  tiempo++;
  if (tiempo == 30*5){
  pagnum++;
  }
    
}



void mousePressed(){
  if (pagnum <= 4)
  {
  pagnum++;
  } else
    if ( pagnum == 5) {
    float distancia = dist(100, 200, mouseX, mouseY);
    if ( distancia < 40 ) {
      pagnum = 0;
    }
  }
}
