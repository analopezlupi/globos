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
           // Globo
      fill(255,0,0);
      noStroke();
      ellipse(x-10,y+1,100,100);
      ellipse(x+10,y+25,50,50); 
      
      // Cara
      fill(255); 
      ellipse(x-30, y-10, 15, 15); // ojo izquierdo
      ellipse(x+10, y-10, 15, 15); // ojo derecho
      
      fill(0);
      ellipse(x-30, y-10, 7, 7); // pupila izquierda
      ellipse(x+10, y-10, 7, 7); // pupila derecha
      
      noFill();
      stroke(0);
      strokeWeight(3);
      arc(x-10, y+15, 40, 30, 0, PI); // sonrisa
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
