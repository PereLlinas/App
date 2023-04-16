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
      wButton, buttonH, "blau");
    this.addRect1 = new Button("ADD LINE", x + 2*m + wButton,
      y + h - buttonH*1.5,
      wButton, buttonH, "blau");
    this.addPlane1 = new Button("ADD PLANE", x + 3*m +2*wButton,
      y + h - buttonH*1.5,
      wButton, buttonH, "blau");
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
      stroke(color(100, 75, 45));
      strokeWeight(10);
      getColor("clar");
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

    float m = 40;
    float wButton = 150;

    this.addPoint2 = new Button("ADD POINT", x + m, y + h - buttonH*1.5, wButton, buttonH*3/4, "blau");
    this.addRect2 = new Button("ADD LINE", x + 2*m + wButton, y + h - buttonH*1.5, wButton, buttonH*3/4, "blau");
    this.addPlane2 = new Button("ADD PLANE", x + 3*m + 2*wButton, y + h - buttonH*1.5, wButton, buttonH*3/4, "blau");
    this.addFigure2 = new Button("ADD FIGURE", x + 4*m +3*wButton, y + h - buttonH*1.5, wButton, buttonH*3/4, "blau");
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
    if (this.v) {
      pushStyle();

      // Rectangle
      stroke(color(100, 75, 45));
      strokeWeight(10);
      getColor("clar");
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
      
      //image(fotos[3], width/2, height/2);

      addPoint2.display();
      addRect2.display();
      addPlane2.display();
      addFigure2.display();
      close.display();

      popStyle();
    }
  }
}



class TriaFigura {

  // Dimensions
  float x, y, w, h;

  // Propietats
  PImage img;
  String title;
  String message;
  boolean v  = false;
  Button  addOcta, addPira, addTetra, addCubo, close;
  float buttonH = 80;

  //Constructor
  TriaFigura(String title, String message, float x, float y, float w, float h) {
    this.title = title;
    this.message = message;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;

    float m = 40;
    float wButton = 150;

    this.addOcta = new Button("OCTAHEDRON", x + m, y + h - buttonH*1.5, wButton, buttonH*3/4, "blau");
    this.addPira = new Button("PYRAMID", x + 2*m + wButton, y + h - buttonH*1.5, wButton, buttonH*3/4, "blau");
    this.addTetra = new Button("TETRAHEDRON", x + 3*m +2*wButton, y + h - buttonH*1.5, wButton, buttonH*3/4, "blau");
    this.addCubo = new Button("CUBE", x + 4*m +3*wButton, y + h - buttonH*1.5, wButton, buttonH*3/4, "blau");
    this.close=new Button("X", 1330-15, 370-15, 30, 30, "vermell");
  }

  //Setters

  void setTextButtons(String txt1, String txt2, String txt3, String txt4) {
    this.addOcta.textBoto = txt1;
    this.addPira.textBoto = txt2;
    this.addTetra.textBoto = txt3;
    this.addCubo.textBoto = txt4;
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
    if (this.v) {
      pushStyle();

      // Rectangle
      stroke(color(100, 75, 45));
      strokeWeight(10);
      getColor("clar");
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

      addOcta.display();
      addPira.display();
      addTetra.display();
      addCubo.display();
      close.display();

      popStyle();
    }
  }
}
