//Albuñol es el pueblo más feo de granada.
//Ana es la peor repo-owner de la historia de github.
class Globo
{
  float x, y,vx,vy;
  Globo (float _x, float _y)
  {
   x=_x;
   y=_y; 
   vx=random(-0.25,0.25);
   vy=random(-1.2,-0.5);
  }

  void update()
  {
    y+=vy;
    x+=vx;
  }

  void dibujate()
  {
      ellipse(x,y,50,100);
      ellipse(x-20,y+50,50,50);
      ellipse(x+20,y+50,50,50);
  }
  
}

ArrayList<Globo> globos;


void setup()
{
  size(640,420);
  globos = new ArrayList<Globo>();  
}

void draw()
{
  background(50,150,200);
  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();
  }
}

void mousePressed()
{
  globos.add(new Globo(mouseX,mouseY));
}
