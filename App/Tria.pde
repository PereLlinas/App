class Tria1 {

  // Dimensions
  float x, y, w, h;

  // Propietats
  PImage img;
  String title;
  String message;
  boolean v  = false;
  Button addPoint1, addRect1, addPlane1, close;
  Button[] buttons=new Button[4];
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
      textFont(getFontAt(0));
      textSize(34);
      fill(0);
      textAlign(LEFT);
      text(title, x + b, y + 1.4*b);

      // Missatge
      fill(0);
      textSize(24);
      textAlign(CENTER);
      text(message, x + w/2, y + 4*b);

      image(fotos[0], x + 3*87.5 + 2*150, 445, 150, 150); //pla
      image(fotos[1], x + 2*87.5 + 150, 445, 150, 150); //recta
      image(fotos[2], x + 87.5, 445, 150, 150); //punt

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
  Button[] buttons = new Button[5];

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

    this.addPoint2 = new Button("POINT", x + m, y + h - buttonH*1.5, wButton, buttonH*3/4, "blau");
    this.addRect2 = new Button("LINE", x + 2*m + wButton, y + h - buttonH*1.5, wButton, buttonH*3/4, "blau");
    this.addPlane2 = new Button("PLANE", x + 3*m + 2*wButton, y + h - buttonH*1.5, wButton, buttonH*3/4, "blau");
    this.addFigure2 = new Button("POLYHEDRON", x + 4*m +3*wButton, y + h - buttonH*1.5, wButton, buttonH*3/4, "blau");
    this.close=new Button("X", 1330-15, 370-15, 30, 30, "vermell");

    this.buttons[0]=this.addPoint2;
    this.buttons[1]=this.addRect2;
    this.buttons[2]=this.addPlane2;
    this.buttons[3]=this.addFigure2;
    this.buttons[4]=this.close;
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

      //Titol
      textFont(getFontAt(0));
      textSize(34);
      fill(0);
      textAlign(LEFT);
      text(title, x + b, y + 1.4*b);

      // Missatge
      fill(0);
      textSize(24);
      textAlign(CENTER);
      text(message, x + w/2, y + 4*b);

      image(fotos[0], x + 3*40 + 2*150, 445, 150, 150); //pla
      image(fotos[1], x + 2*40 + 150, 445, 150, 150); //recta
      image(fotos[2], x + 40, 445, 150, 150); //punt
      image(fotos[3], x + 4*40 + 3*150, 445, 150, 150); //figura

      addPoint2.display();
      addRect2.display();
      addFigure2.setTextSize(18);
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
  Button[] buttons = new Button[5];

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

    this.buttons[0]=this.addOcta;
    this.buttons[1]=this.addPira;
    this.buttons[2]=this.addTetra;
    this.buttons[3]=this.addCubo;
    this.buttons[4]=this.close;
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
      textFont(getFontAt(0));
      textSize(34);
      fill(0);
      textAlign(LEFT);
      text(title, x + b, y + 1.4*b);

      // Missatge
      fill(0);
      textSize(24);
      textAlign(CENTER);
      text(message, x + w/2, y + 4*b);


      image(fotos[4], x + 40, 445, 150, 150); //Octa
      image(fotos[6], x + 3*40 + 2*150, 445, 150, 150); //Pira
      image(fotos[5], x + 2*40 + 150, 445, 150, 150); //Tetra
      image(fotos[7], x + 4*40 + 3*150, 445, 150, 150); //Cubo

      addOcta.display();
      addPira.display();
      addTetra.display();
      addCubo.display();
      close.display();

      popStyle();
    }
  }
}
