class Tria {

  // Dimensions
  float x, y, w, h;

  // Propietats
  PImage img;
  String title;
  String message;

  Button addPoint, addRect, addPlane;
  float buttonH = 80;

  boolean visible  = false;

  // Constructor

  Tria(String title, String message, float x, float y, float w, float h) {
    this.title = title;
    this.message = message;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;

    float m = 50;
    float wButton = (w - 4*m)/3;
    this.addPoint = new Button("Opcio 1", x + m,
      y + h - buttonH*1.5,
      wButton, buttonH);
    this.addRect = new Button("Opcio2", x + 2*m + wButton,
      y + h - buttonH*1.5,
      wButton, buttonH);

    this.addPlane = new Button("Opcio3", x + 3*m +2*wButton,
      y + h - buttonH*1.5,
      wButton, buttonH);
  }

  //Setters

  void setTextButtons(String txt1, String txt2, String txt3) {
    this.addPoint.textBoto = txt1;
    this.addRect.textBoto = txt2;
    this.addPlane.textBoto = txt3;
  }

  void setImage(PImage img) {
    this.img = img;
  }

  void setTexts(String title, String message) {
    this.title = title;
    this.message = message;
  }

  // Dibuixa el Confirm

  void display() {

    if (this.visible) {
      float b = 40;

      pushStyle();

      // Rectangle
      stroke(0);
      strokeWeight(10);
      fill(200, 200, 100);
      rect(x, y, w, h, b/2);

      line(x, y + 2*b, x+w, y + 2*b);

      // Títol
      fill(0);
      textSize(38);
      textAlign(LEFT);
      text(title, x + b, y + 1.4*b);

      // Missatge
      fill(0);
      textSize(24);
      textAlign(CENTER);
      text(message, x + w/2, y + 4*b);

      // Botons d'opcions
      addPoint.display();
      addRect.display();
      addPlane.display();
      popStyle();
    }
  }
}
