//PGraphics per ses figures (fer-ne dos: PH i PV amb ses coordenades reals i
//després ajustar cadascun a la meitat d'es tamany d'es requadre que tenc
//creat per ses projeccions (donar-li background perquè sino és transparent))
//https://processing.org/reference/PGraphics.html

PImage Pla, Figura, Punt, Recta, Pira, Octa, Tetra, Cubo, logo;
PImage[] fotos=new PImage[9];

TextField userText, passText;

Tria1 tria1;
Tria2 tria2;
TriaFigura triaFigura;

//Tria2 tria2;

Confirm confirm;

PositionField PF;

Button loginButton, createButton, FAQS, TUTORIAL, ABOUTUS,
  HOME, PRINT, SAVE, addElement1, addElement2, addPoint, addLine, addPlane, addFigure,
  level1, level2, closeAdd, infoElement;

//SELECT
Select selectPunts;
String[] infoSelect;
int n = -1;
float selectW = 300, selectH = 30;


void setSelectPunts() {
  infoSelect = new String[punts.length];
  // Crea l'array d'informació a partir dels punts
  infoSelect = new String[punts.length];
  // Creació dels selects
  selectPunts = new Select(infoSelect, marginH+(sidebarWidth/2)-100, 2*marginV + 1.5*logoSize, selectW, selectH);
}

void setImages() {
  Pla=loadImage("Pla.png");
  Recta=loadImage("Recta.png");
  Punt=loadImage("Punt.png");
  Figura=loadImage("Figura.png");
  Octa=loadImage("Octa.png");
  Tetra=loadImage("Tetra.png");
  Pira=loadImage("Pira.png");
  Cubo=loadImage("Cubo.png");
  logo=loadImage("logoapp.png");

  fotos[0]=Pla;
  fotos[1]=Recta;
  fotos[2]=Punt;
  fotos[3]=Figura;
  fotos[4]=Octa;
  fotos[5]=Pira;
  fotos[6]=Tetra;
  fotos[7]=Cubo;
  fotos[8]=logo;
}

void setConfirm() {
  float Cheight=800.0;
  float Cwidth=400.0;
  // Confirm(String title, String message, float x, float y, float w, float h){
  confirm=new Confirm("CHOOSE LEVEL", "", (width/2)-(Cheight/2), (height/2)-(Cwidth/2), Cheight, Cwidth);
}

void setPunts() {
  punts = new Punt[10];
}

void savePunt(float x, float y, float z) {
  if (numPunts<punts.length) {
    punts[numPunts] = new Punt("A", x, y, z, 50, color(255));
    numPunts++;
  }
}


//WORKSPACE1 Exclusive
Punt ph1, ph2, ph3, ph4, pv1, pv2, pv3, pv4, pp1, pp2, pp3, pp4, plt1, plt2, plt3;
//Plans base
Pla PH, PV, PP, LT;

color fonsPantalla = color(255);

void setPositionField() {
  int w=300, h=200;
  PF=new PositionField((width/2)-(w/2), (height/2)-(h/2), w, h);
}


void setTria() {
  float Theight=800.0;
  float Twidth=400.0;
  tria1=new Tria1("ADD ELEMENT", "", (width/2)-(Theight/2), (height/2)-(Twidth/2), Theight, Twidth);
  tria2=new Tria2("ADD ELEMENT", "", (width/2)-(Theight/2), (height/2)-(Twidth/2), Theight, Twidth);
  triaFigura=new TriaFigura("CHOOSE POLYHEDRON", "", (width/2)-(Theight/2), (height/2)-(Twidth/2), Theight, Twidth);
}

void setTextFields() {
  userText = new TextField(width/2-300/2, height/2-15, 300, 50);
  passText = new TextField(width/2-300/2, (height/2)+70, 300, 50);
}

void setButtons() {
  loginButton = new Button("LOGIN", width/2-200/2, (height/2)+150, 200, 50, "granate");
  createButton=new Button("CREATE", 1900-200, 280-80, 200, 50, "granate");
  HOME=new Button("HOME", 4*marginH+logoSize, marginV+(bannerHeight/2)-50, 350, 100, "blau");
  FAQS=new Button("FAQ's", (4*marginH+logoSize)+400, marginV+(bannerHeight/2)-50, 350, 100, "blau");
  ABOUTUS=new Button("ABOUT US", (4*marginH+logoSize)+800, marginV+(bannerHeight/2)-50, 350, 100, "blau");
  TUTORIAL=new Button("TUTORIAL", (4*marginH+logoSize)+1200, marginV+(bannerHeight/2)-50, 350, 100, "blau");
  SAVE=new Button("SAVE", (4*marginH+logoSize)+400, marginV+(bannerHeight/2)-50, 350, 100, "blau");
  PRINT=new Button("VIEW PROJECTIONS", (4*marginH+logoSize)+800, marginV+(bannerHeight/2)-50, 350, 100, "blau");
  addElement1=new Button("ADD ELEMENT", marginH+(sidebarWidth/2)-100, 350, 200, 50, "granate");
  addElement2=new Button("ADD ELEMENT", marginH+(sidebarWidth/2)-100, 350, 200, 50, "granate");
  addPoint=new Button ("ADD POINT", marginH+(sidebarWidth/2)-100, 520, 200, 50, "granate");
  addLine=new Button ("ADD LINE", marginH+(sidebarWidth/2)-100, (2*sidebarHeight/4+logoSize+marginV), 200, 50, "granate");
  addPlane=new Button ("ADD PLANE", marginH+(sidebarWidth/2)-100, (3*sidebarHeight/4+logoSize+marginV), 200, 50, "granate");
  addFigure=new Button ("ADD FIGURE", marginH+(sidebarWidth/2)-100, (sidebarHeight+logoSize+marginV), 200, 50, "granate");
}

void setWORKSPACE1() {
  ph1=new Punt("PH", 1200, 800, 0, 1, 255);
  ph2=new Punt("", 1200, -800, 0, 1, 255);
  ph3=new Punt("", -1200, -800, 0, 1, 255);
  ph4=new Punt("", -1200, 800, 0, 1, 255);

  pv1=new Punt("PV", 1200, 0, 800, 1, 255);
  pv2=new Punt("", -1200, 0, 800, 1, 255);
  pv3=new Punt("", -1200, 0, -800, 1, 255);
  pv4=new Punt("", 1200, 0, -800, 1, 255);

  pp1=new Punt("PP", 0, 800, 800, 1, 255);
  pp2=new Punt("", 0, -800, 800, 1, 255);
  pp3=new Punt("", 0, -800, -800, 1, 255);
  pp4=new Punt("", 0, 800, -800, 1, 255);

  plt1=new Punt("", -1200, 0, 0, 1, 255);
  plt2=new Punt("", 1200, 0, 0, 1, 255);
  plt3=new Punt("", 0, 0, 0, 1, 255);

  PH=new Pla(ph1, ph2, ph3, ph4);
  PV=new Pla(pv1, pv2, pv3, pv4);
  PP=new Pla(pp1, pp2, pp3, pp4);
  LT=new Pla(plt1, plt2, plt3);
}

int indexColor;
int i=200;
color[] colors={color(81, 101, 140), color(217, 215, 197), color(166, 130, 86), color(146, 120, 87), color(140, 57, 38), color(210, 0, 0),
  color(81, 101, 140, i), color(217, 215, 197, i), color(166, 130, 86, i),
  color(146, 120, 87, i), color(140, 57, 38, i), color(210, 0, 0, i)};

void getColor(String c) {
  if (c=="blau") {
    indexColor=0;
  } else if (c=="beige") {
    indexColor=1;
  } else if (c=="clar") {
    indexColor=2;
  } else if (c=="obscur") {
    indexColor=3;
  } else if (c=="granate") {
    indexColor=4;
  } else if (c=="vermell") {
    indexColor=5;
  } else if (c=="blau1") {
    indexColor=6;
  } else if (c=="beige1") {
    indexColor=7;
  } else if (c=="clar1") {
    indexColor=8;
  } else if (c=="obscur1") {
    indexColor=9;
  } else if (c=="granate1") {
    indexColor=10;
  } else if (c=="vermell1") {
    indexColor=11;
  }
}

//APARTADO Figures
CUBO cubo;
OCTA octaedre;
TETRA tetraedre;
PIRAMIDE piramide;

FIGURA[] figures;

void setFigures() {
  cubo=new CUBO("Cubo");
  octaedre=new OCTA("Octaedro");
  tetraedre=new TETRA("Tetraedro");
  piramide=new PIRAMIDE("Piramide");

  figures=new FIGURA[numFigures];

  figures[0]=cubo;
  figures[1]=octaedre;
  figures[2]=tetraedre;
  figures[3]=piramide;
}


void setGUI ( ) {
  setTextFields();
  setButtons();
  setWORKSPACE1();
  setTria();
  setPositionField();
  setConfirm();
  setPunts();
  setFigures();
  setImages();
  setSelectPunts();
  /*setCheckboxes();*/
}
