// Component Camp de Temps

class PositionField {

  // Propietats del camp de temps
  int x, y, h, w;
  TextPositionField[] tpf;
  TextField name;
  boolean visible  = false, addPoint=false;
  Button closePF, add, pointButton;
  Punt punt;
  String n;

  // Constructor
  PositionField(String n, int x, int y, int w, int h) {
    this.n=n;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    tpf = new TextPositionField[3];
    tpf[0] = new TextPositionField("X", x, y+50, w/3.1, h);
    tpf[1] = new TextPositionField("Y", x + w/3, y+50, w/3.1, h);
    tpf[2] = new TextPositionField("Z", x + 2*w/3, y+50, w/3.1, h);
    name = new TextField((width/2)-(300/2), 340+50, 300, 50);
    this.closePF=new Button("X", 1130-5, 315-15, 30, 30, "vermell");
    this.add=new Button("ADD POINT", 1100-95, 710, 150, 60, "granate");
  }

  // Dibuixa el Camp de Text
  void display() {
    pushStyle();
    if (this.visible) {
      fill(166, 130, 86);
      strokeWeight(10);
      stroke(166, 130, 86, 450);
      rect((width/2)-200, (height/2)-250, 400, 490);
      textFont(getFontAt(0));
      textSize(34);
      fill(0);
      text(this.n, (width/2)-(300/2), 365);
      for (int i=0; i<tpf.length; i++) {
        tpf[i].display();
      }
      closePF.display();
      name.display();
      add.display();
    }
    popStyle();
  }

  // Escritura en algun dels camps de texte
  void keyPressed(char key, int keyCode) {
    if (this.visible) {
      for (int i=0; i<tpf.length; i++) {
        tpf[i].keyPressed(key, keyCode);
      }
    }
  }

  // Click sobre algun dels camps de texte
  void isPressed() {
    if (this.visible) {
      for (int i=0; i<tpf.length; i++) {
        tpf[i].isPressed();
      }
      name.isPressed();
    }
  }

  float[] getPosition() {
    float[] position = new float[3];
    position[0] = Float.parseFloat(tpf[0].text);
    position[1] = Float.parseFloat(tpf[1].text);
    position[2] = Float.parseFloat(tpf[2].text);
    return position;
  }


  void addPointDataBase() {
    String idFigura = "1";
    String nombrePunto = PF.name.text;
    String x = PF.tpf[0].text;
    String y = PF.tpf[1].text;
    String z = PF.tpf[2].text;
    insertPoint(nombrePunto, x, y, z, idFigura);
  }

  void addPoint() {
    String nombrePunto = PF.name.text;
    float x = Float.valueOf(PF.tpf[0].text);
    float y =  Float.valueOf(PF.tpf[1].text);
    float z =  Float.valueOf(PF.tpf[2].text);
    if (numElements<elements.length) {
      elements[numElements]=nombrePunto;
      numElements++;
    }
    if (numPunts<punts.length) {
      punts[numPunts] = new Punt(nombrePunto, x, y, z, 10, color(255));
      numPunts++;
    }
    for (int i=0; i<numPunts; i++) {
      infoSelect[i] = punts[i].getNom();
    }
  }
}


// Component Camp de Temps

class PositionFieldFigura {

  // Propietats del camp de temps
  int x, y, h, w;
  TextPositionField[] tpf;
  boolean visible  = false, addPoint=false;
  Button closePF, add, pointButton;
  Punt punt;
  String n;
  float[] valor = new float[7];

  // Constructor
  PositionFieldFigura(String n, int x, int y, int w, int h) {
    this.n=n;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;


    float mg=37.5;
    float size=100;
    tpf = new TextPositionField[7];
    tpf[0] = new TextPositionField("Translate X", x+mg, y-45, size, size);
    tpf[1] = new TextPositionField("Translate Y", x + size+2*mg, y-45, size, size);
    tpf[2] = new TextPositionField("Translate Z", x + 2*size+3*mg, y-45, size, size);
    tpf[3] = new TextPositionField("Rotate X", x + 3*size+4*mg, y-45, size, size);
    tpf[4] = new TextPositionField("Rotate Y", x + 4*size+5*mg, y-45, size, size);
    tpf[5] = new TextPositionField("Rotate Z", x + 5*size+6*mg, y-45, size, size);
    tpf[6] = new TextPositionField("Escale", x + 6*size+7*mg, y-45, size, size);

    this.valor[0] = Float.parseFloat(tpf[0].text); //translate x
    this.valor[1] = Float.parseFloat(tpf[1].text); //translate y
    this.valor[2] = Float.parseFloat(tpf[2].text); //translate z
    this.valor[3] = Float.parseFloat(tpf[3].text); //rotate x
    this.valor[4] = Float.parseFloat(tpf[4].text); //rotate y
    this.valor[5] = Float.parseFloat(tpf[5].text); //rotate z
    this.valor[6] = Float.parseFloat(tpf[6].text); //escale

    this.closePF=new Button("X", 1415, 255, 30, 30, "vermell");
    this.add=new Button("ADD POLYHEDRON", 1265, 570, 180, 55, "granate");
  }

  // Dibuixa el Camp de Text
  void display() {
    pushStyle();
    if (this.visible) {
      fill(166, 130, 86);
      strokeWeight(10);
      stroke(166, 130, 86, 450);
      rect(this.x, this.y-200, 1000, 400);
      textFont(getFontAt(0));
      textSize(40);
      fill(0);
      text(this.n, this.x+30, this.y-150);
      for (int i=0; i<tpf.length; i++) {
        tpf[i].display();
      }
      closePF.display();
      add.display();
    }
    popStyle();
  }

  // Escritura en algun dels camps de texte
  void keyPressed(char key, int keyCode) {
    if (this.visible) {
      for (int i=0; i<tpf.length; i++) {
        tpf[i].keyPressed(key, keyCode);
      }
    }
  }

  // Click sobre algun dels camps de texte
  void isPressed() {
    if (this.visible) {
      for (int i=0; i<tpf.length; i++) {
        tpf[i].isPressed();
      }
    }
  }


  void addPointDataBase() {
    //aquí se fa s'insert de ses dades
    String idFigura = "1";
    String nombrePunto = PF.name.text;
    String x = PF.tpf[0].text;
    String y = PF.tpf[1].text;
    String z = PF.tpf[2].text;
    insertPoint(nombrePunto, x, y, z, idFigura);
  }

  void addPira() {
    //aquí se fa s'insert de ses dades
    String nombrePunto = "";
    if (numElements<elements.length) {
      elements[numElements]=nombrePunto;
      numElements++;
    }
    if (numPira<piramide.length) {
      piramide[numPira] = new PIRAMIDE(nombrePunto);
      piramide[numPira].v=true;
      numPira++;
    }
  }
  
  void addTetra() {
    //aquí se fa s'insert de ses dades
    String nombrePunto = "";
    if (numElements<elements.length) {
      elements[numElements]=nombrePunto;
      numElements++;
    }
    if (numTetra<tetra.length) {
      tetra[numTetra] = new TETRA(nombrePunto);
      tetra[numTetra].v=true;
      numTetra++;
    }
  }
  
  void addOcta() {
    //aquí se fa s'insert de ses dades
    String nombrePunto = "";
    if (numElements<elements.length) {
      elements[numElements]=nombrePunto;
      numElements++;
    }
    if (numOcta<octa.length) {
      octa[numOcta] = new OCTA(nombrePunto);
      octa[numOcta].v=true;
      numOcta++;
    }
  }
  
  void addCubo() {
    //aquí se fa s'insert de ses dades
    String nombrePunto = "";
    if (numElements<elements.length) {
      elements[numElements]=nombrePunto;
      numElements++;
    }
    if (numCubo<cubo.length) {
      cubo[numCubo] = new CUBO(nombrePunto);
      cubo[numCubo].v=true;
      numCubo++;
    }
  }
}
