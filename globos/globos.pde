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
      push();
      ellipse(x-10,y,100,100);
      ellipse(x+25,y+25,50,50); 
      pop();
  }
  
}

ArrayList<Globo> globos;


void setup()
{
  size(640,420,P3D);
  globos = new ArrayList<Globo>();  
}

void draw()
{
  background(50,150,200);
  lights();
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
