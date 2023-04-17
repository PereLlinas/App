// FUNCIONS DE DIBUIX DE LES ZONES

//HOME
void dibuixaZonaLogo() {
  pushStyle();
  stroke(0);
  fill(200, 50, 100);
  image(fotos[8], 2*marginH, 4*marginV, logoSize, logoSize);
  popStyle();
}

void dibuixaSideBar() {
  pushStyle();
  fill(166, 130, 86);
  noStroke();
  rect(marginH, 2*marginV + 2*logoSize/3, sidebarWidth, sidebarHeight);
  fill(0);
  textAlign(CENTER);
  text("", marginH + sidebarWidth/2, marginV + logoSize + sidebarHeight/2);
  popStyle();
}

void dibuixaBanner() {
  pushStyle();
  fill(81, 101, 140);
  noStroke();
  rect(marginH, marginV, bannerWidth, bannerHeight);
  fill(0);
  text("", marginH + bannerWidth/2, bannerHeight/2+marginV);
  HOME.display();
  FAQS.display();
  ABOUTUS.display();
  TUTORIAL.display();
  popStyle();
}

void dibuixaZonaCarpetes() {
  pushStyle();
  fill(217, 215, 197);
  stroke(166, 130, 86, 200);
  strokeWeight(7);
  rect(2*marginH + sidebarWidth, 2*marginV + 2*logoSize/3+75, columnWidth, columnHeight);
  popStyle();
}

//LOGIN/REGISTER
void dibuixaLogin() {
  userText.display();
  textSize(24);
  fill(0);
  text("User", width/2-300/2, height/2-25);
  passText.display();
  textSize(24);
  fill(0);
  text("Password", width/2-300/2, (height/2)+60);
  loginButton.display();
}

void dibuixaZonaLogo2() {
  pushStyle();
  fill(200, 50, 100);
  imageMode(CENTER);
  image(fotos[8], width/2, height/2-(logoSize*1.7/2), logoSize*1.3, logoSize*1.3);
  fill(0);
  textAlign(CENTER);
  popStyle();
}

//WORKSPACE1
void dibuixaProjeccions() {
  pushStyle();
  stroke(217, 215, 197);
  fill(255);
  strokeWeight(10);
  rect(1900-4*logoSize/3, 190, 4*logoSize/3, logoSize);
  fill(0);
  textAlign(CENTER);
  text("PROJECCIONS", (1900-4*logoSize/3)+(4*logoSize/3)/2, 190+logoSize/2);
  popStyle();
}

//PENDENT
boolean triaFiguresV=false;
void triaFigures() {
  if (triaFiguresV==true) {
    pushStyle();
    //Rectangle
    int x=width/2;
    int y=height/2;
    int w=800;
    int h=500;
    getColor("obscur");
    stroke(colors[indexColor]);
    strokeWeight(10);
    getColor("beige");
    fill(colors[indexColor]);
    rect(x-(w/2), y-(h/2), w, h);
    popStyle();
  }
}

void FAQSdisplay() {
  int x=335, titleY=250, mg=50;
  getColor("beige");
  fill(color(colors[indexColor]));
  noStroke();
  rect(marginH+sidebarWidth, 2*marginV + 2*logoSize/3+75, columnWidth, columnHeight);
  getColor("obscur");
  fill(colors[indexColor]);
  textFont(getFontAt(0));
  text("FAQ's", 335, 250);

  //Pregunta 1
  textFont(getFontAt(1));
  textSize(40);
  text("What’s the difference between Level 1 and Level 2?", x, titleY+2*mg);
  textFont(getFontAt(2));
  textSize(35);
  text("The main difference between Level 1 and Level 2 is one of the featurings the WORKSPACE offers, the POLYHEDRONS. There are 4 types of polyhedrons that can be displaced around the interface: tetrahedrons, 5 sided pyramids, cubes and octahedrons. These, appear on the origin coordinates but can be translated, on the x, y and z axes, rotated and escalated.", x, titleY+2.5*mg, columnWidth*3/4, columnHeight/5 );

  //Pregunta 2
  textFont(getFontAt(1));
  textSize(40);
  text("How do I know which level to choose?", x, 2*titleY+2*mg);
  textFont(getFontAt(2));
  textSize(35);
  text("This APP was originally thought for those Baccalaureate Students that take the subject of technical drawing, a subject that usually divides the content among the two years, leaving the application of polyhedrons for the second year of the course. If you’re taking technical drawing I, then we recommend choosing Level 1 because of how simpler the interface is. In case you’re taking technical drawing II, then you should consider choosing Level 2.", x, 2*titleY+2.5*mg, columnWidth*3/4, columnHeight/5 );

  //Pregunta 3
  textFont(getFontAt(1));
  textSize(40);
  text("I don’t know how to use the APP, what should I do?", x, 3*titleY+2*mg);
  textFont(getFontAt(2));
  textSize(35);
  text("In this case, press the button HOME and then the button TUTORIAL, these one will lead you to a 5-minute video in which one of our developers shows the functioning of the whole application in detail.", x, 3*titleY+2.5*mg, columnWidth*3/4, columnHeight/5 );
}

void ABOUTUSdisplay() {
  int x=335, titleY=250, mg=50;
  getColor("beige");
  fill(color(colors[indexColor]));
  noStroke();
  rect(marginH+sidebarWidth, 2*marginV + 2*logoSize/3+75, columnWidth, columnHeight);
  getColor("obscur");
  fill(colors[indexColor]);
  textFont(getFontAt(0));
  text("ABOUT US", 335, 250);

  //ABOUT US
  textFont(getFontAt(2));
  textSize(40);
  text("Dihedral Preview is an APP designed specifically to bring to the third dimension what the dihedral system represents in only two dimensions. The main objective behind this project is to allow the user to move freely across the screen and change the viewpoint of the system designed, encouraging understanding in the ones who find difficulties to comprehend a 2D representation. The type of users we aimed are those taking technical drawing as a subject in their baccalaureate diploma, so we tried to simplify as much as we could the interface, so it could be instinctive even if your knowledge about the topic is limited.\n\nDihedral Preview Team", x, titleY+mg, columnWidth*3/4, columnHeight);
}

void TUTORIALdisplay() {
  getColor("blau");
  fill(color(colors[indexColor], 200));
  noStroke();
  rect(marginH+sidebarWidth*1.5, 2*marginV + 2*logoSize/3+150, 2*columnWidth/3, 2*columnHeight/3);
  getColor("obscur");
  fill(colors[indexColor]);
  textFont(getFontAt(0));
  text("TUTORIAL", 335, 250);
}

void dibuixaPlans(){
  
  ph1.display();
  pv1.display();
  pp1.display();
  PH.display();
  PV.display();
  PP.display();
  LT.display();
}
