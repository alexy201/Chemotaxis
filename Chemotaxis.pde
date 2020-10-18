//declare bacteria variables here   
Bacteria [] dots;
void setup()   
{ 
  size(500,500);
  dots = new Bacteria[50];
  for (int i = 0; i < dots.length; i++){
    dots[i] = new Bacteria();
  }
}  
void draw()   
{    
  background(0);
  for (int i = 0; i < dots.length; i++){
     dots[i].move();
     dots[i].show();
  }
} 
void mousePressed()
{
  dots = new Bacteria[50];
  for (int i = 0; i < dots.length; i++){
    dots[i] = new Bacteria();
  }
}
class Bacteria    
{     
  int x, y;
  Bacteria(){
    x = (int)(Math.random()*500);
    y = (int)(Math.random()*500);
  }
  void move(){
    int by = (int)(Math.random()*5);
    if (x < mouseX){
      x += by;
    }else if (x > mouseX){
      x -= by;
    }
    if (y < mouseY){
      y += by;
    }else if (y > mouseY){
      y -= by;
    }
  }
  void show(){
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    ellipse(x,y,20,20);
  }
} 
