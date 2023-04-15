class PIRAMIDE extends FIGURA {

  //atributs
  Poliedre pira;
  Punt a, b, c, d, e;
  Poligon c1, c2, c3, c4, base;

  String nomFigura;

  //constructor

  PIRAMIDE(String nomFigura) {
    super(nomFigura, Tipus.PIRAMIDE);

    this.nomFigura=nomFigura;
    a=new Punt("", 0, 0, 0, 5, color(0));
    b=new Punt("", 100, 0, 100, 5, color(0));
    c=new Punt("", 100, 0, 0, 5, color(0));
    d=new Punt("", 0, 0, 100, 5, color(0));
    e=new Punt(nomFigura, 50, 87, 50, 5, color(0));

    c1=new Poligon(a, d, e);
    c2=new Poligon(b, e, d);
    c3=new Poligon(b, c, e);
    c4=new Poligon(a, e, c);
    base=new Poligon(a, c, b, d);

    pira=new Poliedre(5);

    pira.setCaraAt(0, c4);
    pira.setCaraAt(1, c1);
    pira.setCaraAt(2, c2);
    pira.setCaraAt(3, c3);
    pira.setCaraAt(4, base);

    numFigures++;
  }

  void display() {
    translate(-(width/2), -(height/2), 0);
    pira.display();
  }
}
