class OCTA extends FIGURA {

  //atributs
  Poliedre octaedre;
  Punt a, b, c, d, e, f;
  Poligon base, c1, c2, c3, c4, c5, c6, c7, c8;

  String nomFigura;
  boolean v;

  //constructor

  OCTA(String nomFigura) {
    super(nomFigura, Tipus.OCTAEDRE);

    this.v=false;

    this.nomFigura=nomFigura;
    a=new Punt("", -100, 0, 100, 5, color(0));
    b=new Punt(nomFigura, 100, 0, 100, 5, color(0));
    c=new Punt("", 100, 0, -100, 5, color(0));
    d=new Punt("", -100, 0, -100, 5, color(0));
    e=new Punt("", 0, -141.213562, 0, 5, color(0));
    f=new Punt("", 0, 141.213562, 0, 5, color(0));

    base=new Poligon (a, b, c, d);
    c1=new Poligon(a, b, e);
    c2=new Poligon(b, c, e);
    c3=new Poligon(d, c, e);
    c4=new Poligon(a, d, e);
    c5=new Poligon(a, b, f);
    c6=new Poligon(a, d, f);
    c7=new Poligon(d, c, f);
    c8=new Poligon(c, b, f);

    octaedre=new Poliedre(9);

    octaedre.setCaraAt(0, base);
    octaedre.setCaraAt(1, c1);
    octaedre.setCaraAt(2, c2);
    octaedre.setCaraAt(3, c3);
    octaedre.setCaraAt(4, c4);
    octaedre.setCaraAt(5, c5);
    octaedre.setCaraAt(6, c6);
    octaedre.setCaraAt(7, c7);
    octaedre.setCaraAt(8, c8);

    numFigures++;
  }

  void display() {
    if (this.v==true) {
      translate(0, 0, 0);
      translate(figuresPF.valor[0], figuresPF.valor[1], figuresPF.valor[2]);
      rotateX(figuresPF.valor[3]);
      rotateY(figuresPF.valor[4]);
      rotateZ(figuresPF.valor[5]);
      scale(figuresPF.valor[6]);
      octaedre.display();
    }
  }
}
