enum Tipus {OCTAEDRE, CUB, TETRAEDRE, PIRAMIDE};

class FIGURA{
  
  //atributs
  Tipus tipus;
  String n;
  FIGURA(String n, Tipus t){
   this.n=n;
   this.tipus=t;
  }
}
