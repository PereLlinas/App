// Component Camp de Temps

class PositionField {

  // Propietats del camp de temps
  int x, y, h, w;
  TextPositionField[] tpf;
  TextField name;
  boolean visible  = false;
  Button closePF, add;
  Punt punt;

  // Constructor
  PositionField(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    tpf = new TextPositionField[3];
    tpf[0] = new TextPositionField("X", x, y+50, w/3.1, h);
    tpf[1] = new TextPositionField("Y", x + w/3, y+50, w/3.1, h);
    tpf[2] = new TextPositionField("Z", x + 2*w/3, y+50, w/3.1, h);
    name = new TextField((width/2)-(300/2), 340+50, 300, 50);
    this.closePF=new Button("X", 1130-5, 315-15, 30, 30);
    this.add=new Button("ADD POINT", 1100-75, 710, 105, 55);
  }

  // Dibuixa el Camp de Text
  void display() {
    pushStyle();
    if (this.visible) {
      fill(166, 130, 86);
      strokeWeight(10);
      stroke(166, 130, 86, 450);
      rect((width/2)-200, (height/2)-250, 400, 490);
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
      name.keyPressed(key, keyCode);
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
    //aquí se fa s'insert de ses dades
    String idFigura = "1";
    String nombrePunto = PF.name.text;
    String x = PF.tpf[0].text;
    String y = PF.tpf[1].text;
    String z = PF.tpf[2].text;
    insertPoint(nombrePunto, x, y, z, idFigura);
  }
  
  void addPoint() {
    //aquí se fa s'insert de ses dades
    String nombrePunto = PF.name.text;
    float x = Float.valueOf(PF.tpf[0].text);
    float y =  Float.valueOf(PF.tpf[1].text);
    float z =  Float.valueOf(PF.tpf[2].text);
    if (numPunts<punts.length) {
       punts[numPunts] = new Punt(nombrePunto, x, y, z, 10, color(255));
       numPunts++;
    }
  }
}
