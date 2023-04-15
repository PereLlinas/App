class Tria1 {

  // Dimensions
  float x, y, w, h;

  // Propietats
  PImage img;
  String title;
  String message;
  boolean v  = false;
  Button addPoint1, addRect1, addPlane1, close;
  Button[] buttons={null, null, null, null};
  float buttonH = 80;

  //Constructor
  Tria1(String title, String message, float x, float y, float w, float h) {
    this.title = title;
    this.message = message;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;

    float m = 50;
    float wButton = (w - 4*m)/3;

    this.addPoint1 = new Button("ADD POINT", x + m,
      y + h - buttonH*1.5,
      wButton, buttonH, "");
    this.addRect1 = new Button("ADD LINE", x + 2*m + wButton,
      y + h - buttonH*1.5,
      wButton, buttonH, "");
    this.addPlane1 = new Button("ADD PLANE", x + 3*m +2*wButton,
      y + h - buttonH*1.5,
      wButton, buttonH, "");
    this.close=new Button("X", 1330-15, 370-15, 30, 30, "vermell");

    this.buttons[0]=this.addPoint1;
    this.buttons[1]=this.addRect1;
    this.buttons[2]=this.addPlane1;
    this.buttons[3]=this.close;
  }

  //Setters
  void setTextButtons(String txt1, String txt2, String txt3) {
    this.addPoint1.textBoto = txt1;
    this.addRect1.textBoto = txt2;
    this.addPlane1.textBoto = txt3;
  }

  void setImage(PImage img) {
    this.img = img;
  }

  void setTexts(String title, String message) {
    this.title = title;
    this.message = message;
  }

  void display() {
    if (this.v) {
      float b = 40;

      pushStyle();

      // Rectangle
      getColor("obscur");
      stroke(colors[indexColor]);
      strokeWeight(10);
      getColor("beige");
      fill(colors[indexColor]);
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

      addPoint1.display();
      addRect1.display();
      addPlane1.display();
      close.display();
      popStyle();
    }
  }
}






















class Tria2 {

  // Dimensions
  float x, y, w, h;

  // Propietats
  PImage img;
  String title;
  String message;
  boolean v  = false;
  Button  addPoint2, addRect2, addPlane2, addFigure2, close;
  float buttonH = 80;

  //Constructor
  Tria2(String title, String message, float x, float y, float w, float h) {
    this.title = title;
    this.message = message;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;

    float m = 50;
    float wButton = (w - 4*m)/3;

    this.addPoint2 = new Button("ADD POINT", x + m,
      y + h - buttonH*1.5,
      wButton, buttonH, "");
    this.addRect2 = new Button("ADD LINE", x + 2*m + wButton,
      y + h - buttonH*1.5,
      wButton, buttonH, "");
    this.addPlane2 = new Button("ADD PLANE", x + 3*m +2*wButton,
      y + h - buttonH*1.5,
      wButton, buttonH, "");
    this.addFigure2 = new Button("ADD FIGURE", x + 3*m +2*wButton,
      y + h - buttonH*1.5,
      wButton, buttonH, "");
    this.close=new Button("X", 1330-15, 370-15, 30, 30, "vermell");
  }

  //Setters

  void setTextButtons(String txt1, String txt2, String txt3, String txt4) {
    this.addPoint2.textBoto = txt1;
    this.addRect2.textBoto = txt2;
    this.addPlane2.textBoto = txt3;
    this.addFigure2.textBoto = txt4;
  }

  void setImage(PImage img) {
    this.img = img;
  }

  void setTexts(String title, String message) {
    this.title = title;
    this.message = message;
  }

  void display() {
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

    addPoint2.display();
    addRect2.display();
    addPlane2.display();
    addFigure2.display();
    close.display();

    popStyle();
  }
}
