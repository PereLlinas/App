// FUNCIONS DE DIBUIX DE LES ZONES


//INICI i FOLDERS
void dibuixaZonaLogo(){
  pushStyle();
    fill(200,50,100);
    rect(2*marginH, 4*marginV, logoSize, logoSize);
    fill(0);
    text("LOGO", marginH + logoSize/2, marginV + logoSize/2);
  popStyle();
}

void dibuixaSideBar(){
  pushStyle();
    fill(166,130,86);
    rect(marginH, 2*marginV + 2*logoSize/3, sidebarWidth, sidebarHeight);
    fill(0); textAlign(CENTER);
    text("SIDEBAR", marginH + sidebarWidth/2, marginV + logoSize + sidebarHeight/2);  
  popStyle();
}

void dibuixaBanner(){
  pushStyle();
    fill(81, 101, 140); noStroke();
    rect(marginH, marginV, bannerWidth, bannerHeight);
    fill(0);
    text("BANNER", marginH + bannerWidth/2, bannerHeight/2+marginV);
  popStyle();
}

void dibuixaZonaCarpetes(){
  pushStyle();
    fill(200, 200, 50);
    rect(2*marginH + sidebarWidth, 2*marginV + 2*logoSize/3+75, columnWidth, columnHeight);
    fill(0);
    text("Zona carpetes", 2*marginH + sidebarWidth +columnWidth/2, 2*marginV + bannerHeight + columnHeight/2);
  popStyle();
}

//LOGIN/REGISTER
void dibuixaLogin(){
  rectMode(CENTER);
  rect(width/2, height/2, 300, 50);
  image(getLogoIES(), 2*marginH, 2*marginV, 200, 100);
  TextField userText, passText;
   userText = new TextField(width/2, height/2, 300, 50);
   passText = new TextField(width/2, (height/2)+70, 300, 50);
   
   fill(0); textSize(48); textAlign(LEFT);
   textSize(24); 
   text("Username: ", width/2, height/2);
   text("Password: ", width/2, (height/2)+70);
   
   // Dibuixa els camps de text
   userText.display();
   passText.display();
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

//WORKSPACE
void dibuixaProjeccions(){
  pushStyle();
  rect(1900-4*logoSize/3, 190, 4*logoSize/3, logoSize);
    fill(0); textAlign(CENTER);
    text("PROJECCIONS", width/2, height/2-200);
  popStyle();
  
  
  
}
