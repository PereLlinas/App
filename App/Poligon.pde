class Poligon {

  // Atributs
  Punt[] punts;
  int numPunts;

  //Constructor
  Poligon(Punt...p) {
    this.numPunts = p.length;
    this.punts=new Punt [p.length];
    for (int i=0; i<p.length; i++) {
      this.punts[i]=p[i];
    }
  }

  // Getters
  Punt getPunt(int i) {
    return this.punts[i];
  }

  // Setters

  void setPunt(int i, Punt p) {
    this.punts[i] = p;
  }


  void display() {

    // Dibuixa la línia entre els punts i l'interior
    stroke(r, g, b);
    strokeWeight(3);
    beginShape();
    fill(r, g, b, 150);
    for (int i=0; i<numPunts; i++) {
      vertex(this.punts[i].x, this.punts[i].y, this.punts[i].z);
    }
    endShape(CLOSE);

    // Dibuixa els punts del poligon
    for (int i=0; i<numPunts; i++) {
      this.punts[i].setColor(color(r, g, b));
      this.punts[i].display();
    }
  }
}
