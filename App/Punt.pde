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
  String getNom(){
    return this.Nom;
  }
  float getX(){
    return this.x;
  }
  float getY(){
    return this.y;
  }
  float getZ(){
    return this.z;
  }

  void display() {
    pushMatrix();
    translate(x, y, z);
    fill(59, 131, 189);
    stroke(59, 131, 189);
    sphereDetail(2, 2);
    sphere(r);
    popMatrix();
    text(Nom, x+r+10, y+r+10, z+10);
  }
}
