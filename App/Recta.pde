class Recta {
  float x, y, z;
  Punt A, B;
  int numPunts;
  String Nom;

  boolean v;

  Recta(String Nom, Punt A, Punt B) {
    this.Nom=Nom;
    this.A = A;
    this.B = B;
    this.v=false;
  }
  void display() {
    if (this.v==true) {
      line(this.A.x, this.A.y, this.A.z, this.B.x, this.B.y, this.B.z);
    }
  }
}
