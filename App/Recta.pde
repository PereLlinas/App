class Recta {
  float x, y, z;
  Punt A, B;
  int numPunts;
  String Nom;

  Recta(String Nom, Punt A, Punt B) {
    this.Nom=Nom;
    this.A = A;
    this.B = B;
  }
  void display() {
    line(this.A.x, this.A.y, this.A.z, this.B.x, this.B.y, this.B.z);
  }
}
