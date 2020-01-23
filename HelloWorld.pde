/*

Hello World by Graham Falk

Writes "Hello World!" on screen with color. WOW

Moves "Hello World!" with white, red, and black on the screen from top left to bottom right in a probably very inefficient way.
On mouse click, it resets the "Hello World!" to the top left and randomizes the color of the background between 5 preset colors.

*/

PFont f;
PFont l;
PFont r;
public int x = width/2;
public int y = height/2;
public int dx = 1;
public int dy = 1;
public int i = 0;
public int a = 42;
public int b = 218;
public int c = 54;


void setup() {
  size(1000,800);
  textAlign(CENTER);
  
  //create font
  f = createFont("Monaco", 130);
  l = createFont("Monaco", 134);
  r = createFont("Monaco", 132);
}

void draw() {
  background(a,b,c);
 
 for (i=0; i<100;i++)
 {
   x+=dx;
   y+=dy;
    //Activate font
    textFont(f);
    fill(255,255,255);
    
    //draw text ,centered
    text("Hello World!",x,y);
    
    textFont(r);
    fill(255,0,0);
    text("Hello World!",x,y);
    
    textFont(l);
    fill(0);
    text("Hello World!",x,y);
 } 
}

void mouseClicked()
{
  x=0;
  y=0;
  i=0;
  int i = (int) random(5);
  switch(i){
    case 0:
    a=0;
    b=119;
    c=255;
    break;
    case 1:
    a=255;
    b=0;
    c=222;
    break;
    case 2:
    a=42;
    b=218;
    c=54;
    break;
    case 3:
    a=255;
    b=230;
    c=0;
    break;
    case 4:
    a=0;
    b=255;
    c=239;
    break;
  }
}
