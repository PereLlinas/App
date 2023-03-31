class Tria {

  // Dimensions
  float x, y, w, h;

  // Propietats
  PImage img;
  String title;
  String message;
  boolean v  = false;
  boolean c  = false;
  Button[] buttons={null, null, null, null};
  Button addPoint, addRect, addPlane, addFigure, close;
  float buttonH = 80;


  // Constructor

  Tria(String title, String message, float x, float y, float w, float h) {
    this.title = title;
    this.message = message;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.v = v;
    this.c = c;

    float m = 50;
    float wButton = (w - 4*m)/3;
    
    //BOTONS LVL1
    if (this.v || this.c) { 
    this.addPoint = new Button("ADD POINT", x + m,
      y + h - buttonH*1.5,
      wButton, buttonH);
    this.addRect = new Button("ADD LINE", x + 2*m + wButton,
      y + h - buttonH*1.5,
      wButton, buttonH);
    this.addPlane = new Button("ADD PLANE", x + 3*m +2*wButton,
      y + h - buttonH*1.5,
      wButton, buttonH);
    }
    //BOTONS LVL2
    else if (this.v==false || this.c==false) { 
      this.addPoint = new Button("ADD POINT", x + m,
      y + h - buttonH*1.5,
      wButton, buttonH);
    this.addRect = new Button("ADD LINE", x + 2*m + wButton,
      y + h - buttonH*1.5,
      wButton, buttonH);
    this.addPlane = new Button("ADD PLANE", x + 3*m +2*wButton,
      y + h - buttonH*1.5,
      wButton, buttonH);
    this.addFigure = new Button("ADD FIGURE", x + 3*m +2*wButton,
      y + h - buttonH*1.5,
      wButton, buttonH);
    this.close=new Button("X", 1330-15, 370-15, 30, 30);
    }
  

    this.buttons[0]=this.addPoint;
    this.buttons[1]=this.addRect;
    this.buttons[2]=this.addPlane;
    this.buttons[3]=this.close;
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

  // Dibuixa el Tria

  void display() {

    if (this.v==false || this.c==false) { //v=true
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
      close.display();
      popStyle();
    } else if (this.v || this.c) { //v=true
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
      addFigure.display();
      close.display();
      popStyle();
    }
  }


  void isPressed() {
    if (this.v) {
      for (int i=0; i<buttons.length; i++) {
        //buttons[i].isPressed();
      }
    }
  }
}
