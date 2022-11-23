// FUNCIONS DE DIBUIX DE LES ZONES

void dibuixaZonaLogo(){
  pushStyle();
    fill(200,50,100);
    rect(2*marginH, 4*marginV, logoSize, logoSize);
    fill(0);
    text("LOGO", marginH + logoSize/2, marginV + logoSize/2);
  popStyle();
}

void dibuixaZonaLogo2(){
  pushStyle();
    fill(200,50,100);
    rectMode(CENTER);
    rect(width/2, height/2-200, logoSize, logoSize);
    fill(0); textAlign(CENTER);
    text("LOGO", width/2, height/2-200);
  popStyle();
}

void dibuixaSideBar(){
  pushStyle();
    fill(50,200,100);
    rect(marginH, 2*marginV + 2*logoSize/3, sidebarWidth, sidebarHeight);
    fill(0);
    text("SIDEBAR", marginH + sidebarWidth/2, marginV + logoSize + sidebarHeight/2);  
  popStyle();
}

void dibuixaBanner(){
  pushStyle();
    fill(240, 100, 50);
    rect(marginH, marginV, bannerWidth, bannerHeight);
    fill(0);
    text("BANNER", marginH + bannerWidth/2, bannerHeight/2+marginV);
  popStyle();
}

void dibuixaColumna1(){
  pushStyle();
    fill(200, 200, 50);
    rect(2*marginH + sidebarWidth, 2*marginV + 2*logoSize/3+75, columnWidth, columnHeight);
    fill(0);
    text("COLUMN 1", 2*marginH + sidebarWidth +columnWidth/2, 2*marginV + bannerHeight + columnHeight/2);
  popStyle();
}

void dibuixaColumna2(){
  pushStyle();
    fill(200, 200, 50);
    rect(3*marginH + sidebarWidth + columnWidth, 2*marginV + bannerHeight, columnWidth, columnHeight);
    fill(0);
    text("COLUMN 2", 3*marginH + sidebarWidth + columnWidth +columnWidth/2, 2*marginV + bannerHeight + columnHeight/2);
  popStyle();
}

void dibuixaColumna12(){
  pushStyle();
    fill(200, 200, 50);
    rect(2*marginH + sidebarWidth, 2*marginV + bannerHeight, 2*columnWidth + marginH, columnHeight);
    fill(0);
    text("COLUMN 1i2", 3*marginH + sidebarWidth + columnWidth, 2*marginV + bannerHeight + columnHeight/2);
  popStyle();
}

void dibuixaColumna3(){
  pushStyle();
    fill(200, 200, 50);
    rect(4*marginH + sidebarWidth + 2*columnWidth, 2*marginV + bannerHeight, columnWidth, columnHeight);
    fill(0);
    text("COLUMN 3", 4*marginH + sidebarWidth + 2*columnWidth +columnWidth/2, 2*marginV + bannerHeight + columnHeight/2); 
  popStyle();
}

void dibuixaLogin(){
  rectMode(CENTER);
  rect(width/2, height/2, 300, 50);
}
