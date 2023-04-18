class Pla {

  // Atributs
  Punt[] punts;
  int numPunts;
  Punt a, b, c;

  boolean v;


  //Constructor
  Pla(Punt...p) {
    this.numPunts = p.length;
    this.punts=new Punt [p.length];
    for (int i=0; i<p.length; i++) {
      this.punts[i]=p[i];
    }

    this.v=true;
  }

  Punt getPunt(int i) {
    return this.punts[i];
  }

  void setPunt(int i, Punt p) {
    this.punts[i] = p;
  }

  void print() {
    System.out.println("Poligon: ");
    for (int i=0; i<numPunts; i++) {
      if (this.punts[i]!=null) {
        //this.punts[i].print();
      }
    }
  }

  void setV() {
    this.v=false;
  }

  void display() {
    if (this.v==true) {
      // Dibuixa la línia entre els punts i l'interior
      stroke(255, 0, 0);
      strokeWeight(3);
      fill(255, 0, 0, 50);
      beginShape();
      for (int i=0; i<numPunts; i++) {
        vertex(this.punts[i].x, this.punts[i].y, this.punts[i].z);
      }
      endShape(CLOSE);

      // Dibuixa els punts del poligon
      for (int i=0; i<numPunts; i++) {
        this.punts[i].display();
      }
    }
  }
}
