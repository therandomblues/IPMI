PImage galancopeton;

galancopeton = loadImage("Elgor_Dito.jpg");


size(800, 400); 
background(0, 255, 255);

//pelito
fill(100,50,0);
triangle(325+300,100,400+150,50,475,100);

//carocha
fill(220,175,75);
rect(325+150,100,150,200);

//ojos
line(375+200,150,375+200,125);
line(425+100,150,425+100,125);

//boca
line(375+200,200,425+100,200);

//naso
line(400+150,150,400+150,175);
line(395+150,180,405+150,180);

//cejas
stroke(100,50,0);
line(410+150,125,440+150,125);
line(360+150,125,390+150,125);

//imagen facheraaaaa
image(galancopeton, 0,0,400,400);
