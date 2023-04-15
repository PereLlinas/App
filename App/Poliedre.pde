float r, g, b;
class Poliedre {
  Poligon[] cares;

  Poliedre(int nc) {
    cares=new Poligon[nc];
    for (int i=0; i<nc; i++) {
      r=random(0.0, 255.0);
      g=random(0.0, 255.0);
      b=random(0.0, 255.0);
    }
  }

  void setCaraAt(int nc, Poligon p) {
    cares[nc]=p;
  }

  void display() {
    for (int i=0; i<cares.length; i++) {
      cares[i].display();
    }
  }
}
