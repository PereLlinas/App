// Component Camp de Temps

class PositionField {

  // Propietats del camp de temps
  int x, y, h, w;
  TextPositionField[] tf;
  boolean visible  = false;
  Button closePF;

  // Constructor
  PositionField(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    tf = new TextPositionField[3];
    tf[0] = new TextPositionField("X", x, y, w/3.1, h);
    tf[1] = new TextPositionField("Y", x + w/3, y, w/3.1, h);
    tf[2] = new TextPositionField("Z", x + 2*w/3, y, w/3.1, h);
    this.closePF=new Button("", 1130-5, 410-15, 30, 30);
  }

  // Dibuixa el Camp de Text
  void display() {
    pushStyle();
    if (this.visible) {
      fill(166, 130, 86);
      strokeWeight(10);
      stroke(166, 130, 86, 450);
      rect((width/2)-200, (height/2)-150, 400, 300);
      for (int i=0; i<tf.length; i++) {
        tf[i].display();
      }
      closePF.display();
    }
    popStyle();
  }

  // Escritura en algun dels camps de texte
  void keyPressed(char key, int keyCode) {
    if (this.visible) {
      for (int i=0; i<tf.length; i++) {
        tf[i].keyPressed(key, keyCode);
      }
    }
  }

  // Click sobre algun dels camps de texte
  void isPressed() {
    if (this.visible) {
      for (int i=0; i<tf.length; i++) {
        tf[i].isPressed();
      }
    }
  }

  float[] getPosition() {
    float[] position = new float[3];
    position[0] = Float.parseFloat(tf[0].text);
    position[1] = Float.parseFloat(tf[1].text);
    position[2] = Float.parseFloat(tf[2].text);
    return position;
  }
}
