import ddf.minim.*;
 
Minim minim;
AudioPlayer song;


int rectWidth;
   
void setup() 
{
  size(640, 360);
  noStroke();
  background(0);
  rectWidth = width/4;  
}

void draw() 
{ 
  
}

void keyPressed()
{
  switch(keyCode) 
  {
    case 32: println("ESPACIO"); 
             minim = new Minim(this);
             song = minim.loadFile("boing2.mp3");
             song.play();
             background(random(0,255),random(0,255),random(0,255));       
             break;
    case 37: println("IZQUIERDA");  background(random(0,255),random(0,255),random(0,255));    break;
    case 38: println("ARRIBA");     background(random(0,255),random(0,255),random(0,255));    break;
    case 39: println("DERECHA");    background(random(0,255),random(0,255),random(0,255));    break;
    case 40: println("ABAJO");      background(random(0,255),random(0,255),random(0,255));    break;
  }
  
  //println("key: "+key);
  //println("keyCode: "+keyCode); 
} 
