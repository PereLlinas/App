// FUNCIONS DE DIBUIX DE LES ZONES

//HOME
void dibuixaZonaLogo() {
  pushStyle();
  stroke(0);
  fill(200, 50, 100);
  rect(2*marginH, 4*marginV, logoSize, logoSize);
  fill(0);
  text("", marginH + logoSize/2, marginV + logoSize/2);
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
  fill(0);
  text("Zona carpetes", 2*marginH + sidebarWidth +columnWidth/2, 2*marginV + bannerHeight + columnHeight/2);
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
  rectMode(CENTER);
  rect(width/2, height/2-180, logoSize, logoSize);
  fill(0);
  textAlign(CENTER);
  text("LOGO", width/2, height/2-200);
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
