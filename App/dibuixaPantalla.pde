void HOME() { // + botó CREATE + Textos + POP-UPS
  jcam.beginHUD();
  background(217, 215, 197);
  dibuixaBanner();
  dibuixaSideBar();
  dibuixaZonaLogo();
  dibuixaZonaCarpetes();
  setLevels();
  createButton.display();
  createFolderButton.display();
  HOME.display();
  FAQS.display();
  ABOUTUS.display();
  TUTORIAL.display();
  pushStyle();
  fill(0); //textFont(getSecondFont());
  text("APP Name", 335, 250);
  popStyle();
  //afegir cards per cada creació
  jcam.endHUD();
}

void WORKSPACE1() {
background(217, 215, 197, 150);
  
  //Display plans i punts base
  ph1.display();
  pv1.display();
  pp1.display();
  PH.display();
  PV.display();
  PP.display();
  LT.display();
  
  jcam.beginHUD();
  //ELEMENTS DECORATIUS
  dibuixaBanner();
  dibuixaSideBar(); //pop-ups que se generin a una altura concreta
  dibuixaZonaLogo();
  dibuixaProjeccions();
  //BOTONS
  SAVE.display(); //pendent
  PRINT.display(); //pendent
  TUTORIAL.display(); //pendent
  NAME.display(); //pendent
  addElement.display(); //pendent
  jcam.endHUD();
}

void WORKSPACE2() {
  background(217, 215, 197, 150);
  
  //Display plans i punts base
  ph1.display();
  pv1.display();
  pp1.display();
  PH.display();
  PV.display();
  PP.display();
  LT.display();
  
  jcam.beginHUD();
  dibuixaBanner();
  dibuixaSideBar(); //pop-ups que se generin a una altura concreta
  dibuixaZonaLogo();
  dibuixaProjeccions();
  SAVE.display(); //pendent
  PRINT.display(); //pendent
  TUTORIAL.display(); //pendent
  NAME.display(); //pendent
  jcam.endHUD();
}
void FAQS() {
  jcam.beginHUD();
    background(150);
    dibuixaBanner();
    HOME.display();
    FAQS.display();
    ABOUTUS.display();
    TUTORIAL.display();
  jcam.endHUD();
}

void TUTORIAL() {
  jcam.beginHUD();
    background(230);
    dibuixaBanner();
    HOME.display();
    FAQS.display();
    ABOUTUS.display();
    TUTORIAL.display();
  jcam.endHUD();
}

void ABOUTUS() {
  jcam.beginHUD();
    background(100);
    dibuixaBanner();
    HOME.display();
    FAQS.display();
    ABOUTUS.display();
    TUTORIAL.display();
  jcam.endHUD();
}

void LOGIN () {
  jcam.beginHUD();
  background(217, 215, 197);
  dibuixaZonaLogo2();
  dibuixaLogin();
  jcam.endHUD();
}
