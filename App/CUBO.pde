class CUBO extends FIGURA{

  //atributs
  Poliedre cub;
  Punt a, b, c, d, e, f, g, h;
  Poligon base, c1, c2, c3, c4, sostre;

  String nomFigura;
  
  //constructor

  CUBO(String nomFigura) {
    super(nomFigura, Tipus.CUB);
    
    this.nomFigura=nomFigura;
    this.a=new Punt("", -100, 100, 100, 5, color(0));
    this.b=new Punt(nomFigura, 100, 100, 100, 5, color(0));
    this.c=new Punt("", 100, 100, -100, 5, color(0));
    this.d=new Punt("", -100, 100, -100, 5, color(0));
    this.e=new Punt("", -100, -100, +100, 5, color(0));
    this.f=new Punt("", 100, -100, 100, 5, color(0));
    this.g=new Punt("", 100, -100, -100, 5, color(0));
    this.h=new Punt("", -100, -100, -100, 5, color(0));

    base=new Poligon (a, b, c, d);
    sostre=new Poligon(e, f, g, h);
    c1=new Poligon(a, b, f, e);
    c2=new Poligon(b, c, g, f);
    c3=new Poligon(d, c, g, h);
    c4=new Poligon(a, d, h, e);

    cub=new Poliedre(6);

    cub.setCaraAt(0, base);
    cub.setCaraAt(1, sostre);
    cub.setCaraAt(2, c1);
    cub.setCaraAt(3, c2);
    cub.setCaraAt(4, c3);
    cub.setCaraAt(5, c4);
    
    numFigures++;
  }

  void display() {
    translate(-(width/2), -(height/2), 0);
    cub.display();
  }
}
