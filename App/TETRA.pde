class TETRA extends FIGURA {

  //atributs
  Poliedre tetra;
  Punt a, b, c, d;
  Poligon c1, c2, c3, c4;

  String nomFigura;

  //constructor

  TETRA(String nomFigura) {
    super(nomFigura, Tipus.TETRAEDRE);

    this.nomFigura=nomFigura;
    a=new Punt(nomFigura, 0, 100, 100, 5, color(0));
    b=new Punt("", 100, 100, 0, 5, color(0));
    c=new Punt("", 0, 0, 0, 5, color(0));
    d=new Punt("", 100, 0, 100, 5, color(0));

    c1=new Poligon(a, b, c);
    c2=new Poligon(b, c, d);
    c3=new Poligon(d, c, a);
    c4=new Poligon(a, d, c);


    tetra=new Poliedre(4);

    tetra.setCaraAt(0, c4);
    tetra.setCaraAt(1, c1);
    tetra.setCaraAt(2, c2);
    tetra.setCaraAt(3, c3);

    numFigures++;
  }

  void display() {
    translate(-(width/2), -(height/2), 0);
    tetra.display();
  }
}
