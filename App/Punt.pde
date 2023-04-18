Button[] ButtonPunts=new Button[20];

class Punt {
  float x, y, z, r;
  String nom;
  color c;

  Punt(String n, float x, float y, float z, float r, color c) {
    this.nom=n;
    this.x=-x;
    this.y=-y;
    this.z=z;
    this.r=r;
    this.c=c;
  }

  String getNom() {
    return this.nom;
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
    text(nom, x+r+10, y+r+10, z+10);
  }


  String getInfo() {
    return this.nom+":("+(-x)+", "+(-y)+", "+z+")";
  }

  void dibuixaInfo(float x, float y, float w, float h) {
    getColor("clar");
    fill(color(colors[indexColor]));
    noStroke();
    rect(x, y, w, h, 25);
    fill(0);
    textFont(getFontAt(0));
    textSize(30);
    text("PUNT:", x + 20, y + 50);
    textFont(getFontAt(1));
    textSize(24);
    text(getInfo(), x+ 20, y + 100);
  }
}
