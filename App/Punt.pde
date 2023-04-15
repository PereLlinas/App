Button[] ButtonPunts=new Button[numPunts];

class Punt {
  float x, y, z, r;
  String Nom;
  color c;

  Punt(String n, float x, float y, float z, float r, color c) {
    this.Nom=n;
    this.x=-x;
    this.y=-y;
    this.z=z;
    this.r=r;
    this.c=c;
  }

  String getNom() {
    return this.Nom;
  }
  float getX() {
    return this.x;
  }
  float getY() {
    return this.y;
  }
  float getZ() {
    return this.z;
  }

  void setColor(color a) {
    this.c=a;
  }

  void display() {
    pushMatrix();
    translate(x, y, z);
    fill(c, 150);
    stroke(c);
    sphereDetail(8, 8);
    sphere(r-3);
    popMatrix();
    fill(0);
    text(Nom, x+r+10, y+r+10, z+10);
  }
}
