class Pla {

  // Atributs
  Punt[] punts;
  int numPunts;
  Punt a, b, c;


  //Constructor
  Pla(Punt...p) {
    this.numPunts = p.length;
    this.punts=new Punt [p.length];
    for (int i=0; i<p.length; i++) {
      this.punts[i]=p[i];
    }
  }

  /*void infitePlane() {
    for (int i=0; i<punts.length; i++) {
      if (i==0) {
        a=new Punt("", punts[i].getX()*10, punts[i].getY()*10, punts[i].getZ()*10, 0);
      } else if (i==1) {
        b=new Punt("", punts[i].getX()*10, punts[i].getY()*10, punts[i].getZ()*10, 0);
      } else if (i==2) {
        c=new Punt("", punts[i].getX()*10, punts[i].getY()*10, punts[i].getZ()*10, 0);
      }
    }
  }*/

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
  /* color c;
   
   void shapeColor(){
   
   if(this.x==0||this.Punt.y==0||this.Punt.z==0){
   stroke(255, 100, 0);
   strokeWeight(3);
   fill(255, 100, 0, 50);
   }
   
   else if(this.Punt.x>0||this.Punt.y>0||this.Punt.z>0){
   stroke(255, 100, 0);
   strokeWeight(3);
   fill(255, 100, 0, 50);}
   
   else if(this.Punt.x>0||this.Punt.y<0||this.Punt.z>0){
   stroke(255, 0, 100);
   strokeWeight(3);
   fill(255, 0, 100, 50);}
   
   else if(this.Punt.x>0||this.Punt.y>0||this.Punt.z<0){
   stroke(255, 50, 50);
   strokeWeight(3);
   fill(255, 50, 50, 50);}
   
   else if(this.Punt.x>0||this.Punt.y<0||this.Punt.z<0){
   stroke(255, 0, 0);
   strokeWeight(3);
   fill(255, 0, 0, 50);}
   
   else if(this.Punt.x<0||this.Punt.y<0||this.Punt.z>0){
   stroke(255, 0, 0);
   strokeWeight(3);
   fill(255, 0, 0, 50);}
   
   else if(this.Punt.x<0||this.Punt.y>0||this.Punt.z>0){
   stroke(255, 0, 0);
   strokeWeight(3);
   fill(255, 0, 0, 50);}
   
   else if(this.Punt.x<0||this.Punt.y>0||this.Punt.z<0){
   stroke(255, 0, 0);
   strokeWeight(3);
   fill(255, 0, 0, 50);}
   
   else if(this.Punt.x<0||this.Punt.y<0||this.Punt.z<0){
   stroke(255, 0, 0);
   strokeWeight(3);
   fill(255, 0, 0, 50);}
   }*/

  void display() {
    // Dibuixa la línia entre els punts i l'interior
    stroke(255, 0, 0);
    strokeWeight(3);
    fill(255, 0, 0, 50);
    beginShape();
    for (int i=0; i<numPunts; i++) {
      vertex(this.punts[i].x, this.punts[i].y, this.punts[i].z);
    }
    endShape(CLOSE);
    //text(Nom, x+r+10, y+r+10, z);

    // Dibuixa els punts del poligon
    for (int i=0; i<numPunts; i++) {
      this.punts[i].display();
     /* a.display();
      b.display();
      c.display();*/
    }
  }
}
