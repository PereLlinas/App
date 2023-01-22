TextField userText, passText;

Tria tria1;

PositionField PF;

Button loginButton, createButton, createFolderButton, FAQS, TUTORIAL, ABOUTUS, 
HOME, PRINT, SAVE, NAME, addElement, addPoint, addLine, addPlane, addFigure, level1, level2;


//WORKSPACE1 Exclusive
Punt ph1, ph2, ph3, ph4, pv1, pv2, pv3, pv4, pp1, pp2, pp3, pp4, plt1, plt2, plt3;
//Plans base
Pla PH, PV, PP, LT;

color fonsPantalla = color(255);

void setPositionField(){
    int w=600, h=300;
  PF=new PositionField((width/2)-(w/2), (height/2)-(h/2), w, h);
}

void setTria(){
  float Theight=800.0;
  float Twidth=400.0;
  tria1=new Tria("ADD ELEMENT", "", (width/2)-(Theight/2), (height/2)-(Twidth/2), Theight, Twidth);
}

void setTextFields() {
  userText = new TextField(width/2-300/2, height/2, 300, 50);
  passText = new TextField(width/2-300/2, (height/2)+70, 300, 50);
}

void setButtons() {
  loginButton = new Button("LOGIN", width/2-200/2, (height/2)+140, 200, 50);
  createButton=new Button("CREATE", 1900-200, 280-80, 200, 50);
  createFolderButton=new Button("CREATE FOLDER", marginH+(sidebarWidth/2)-100, 990, 200, 50);
  HOME=new Button("HOME", 4*marginH+logoSize, marginV+(bannerHeight/2)-50, 350, 100);
  FAQS=new Button("FAQ's", (4*marginH+logoSize)+400, marginV+(bannerHeight/2)-50, 350, 100);
  ABOUTUS=new Button("ABOUT US", (4*marginH+logoSize)+800, marginV+(bannerHeight/2)-50, 350, 100);
  TUTORIAL=new Button("TUTORIAL", (4*marginH+logoSize)+1200, marginV+(bannerHeight/2)-50, 350, 100);
  SAVE=new Button("SAVE", (4*marginH+logoSize)+400, marginV+(bannerHeight/2)-50, 350, 100);
  NAME=new Button("NAME", (4*marginH+logoSize), marginV+(bannerHeight/2)-50, 350, 100);
  PRINT=new Button("PRINT PROJECTIONS", (4*marginH+logoSize)+800, marginV+(bannerHeight/2)-50, 350, 100);
  addElement=new Button("ADD ELEMENT", marginH+(sidebarWidth/2)-100, 350, 200, 50);
  addPoint=new Button ("ADD POINT", marginH+(sidebarWidth/2)-100, 520, 200, 50);
  addLine=new Button ("ADD Line", marginH+(sidebarWidth/2)-100, (2*sidebarHeight/4+logoSize+marginV), 200, 50);
  addPlane=new Button ("ADD PLANE", marginH+(sidebarWidth/2)-100, (3*sidebarHeight/4+logoSize+marginV), 200, 50);
  addFigure=new Button ("ADD FIGURE", marginH+(sidebarWidth/2)-100,(sidebarHeight+logoSize+marginV), 200, 50);
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

void setColors() {
  color blau=color(81, 101, 140);
  color beige=color(217, 215, 197);
  color clar=color(166, 130, 86);
  color obscur=color(146, 120, 87);
  color granate=color(140, 57, 38);
}


void setGUI ( ) {
  setTextFields();
  setButtons();
  setWORKSPACE1();
  setColors();
  setTria();
  setPositionField();
  /*setCheckboxes();*/
}
