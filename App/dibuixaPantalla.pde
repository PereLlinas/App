void HOME() { // + botó CREATE + Textos + POP-UPS
  jcam.beginHUD();
  background(217, 215, 197);
  dibuixaBanner();
  dibuixaSideBar();
  dibuixaZonaLogo();
  dibuixaZonaCarpetes();
  createButton.display();
  createFolderButton.display();
  HOME.display();
  FAQS.display();
  ABOUTUS.display();
  TUTORIAL.display();
  pushStyle();
  fill(0); /*textFont(titol)*/
  ;
  textSize(50);
  text("APP Name", 335, 250);
  popStyle();
  //afegir cards per cada creació
  jcam.endHUD();
}

void WORKSPACE1() {
  jcam.beginHUD();
  background(217, 215, 197, 150);
  dibuixaBanner();
  dibuixaSideBar(); //pop-ups que se generin a una altura concreta
  dibuixaProjeccions();
  jcam.endHUD();
  //Display elements creats
  A.display();
  B.display();
  C.display();
  ALFA.display();
  r.display();
  //Display plans i punts base
  ph1.display();
  pv1.display();
  pp1.display();
  PH.display();
  PV.display();
  PP.display();
  LT.display();
}

void WORKSPACE2() {
  jcam.beginHUD();
  background(217, 215, 197);
  dibuixaBanner();
  dibuixaSideBar(); //pop-ups que se generin a una altura concreta
  dibuixaProjeccions();
  jcam.endHUD();
  //Display elements creats
  A.display();
  B.display();
  C.display();
  ALFA.display();
  r.display();
  //Display plans i punts base
  ph1.display();
  pv1.display();
  pp1.display();
  PH.display();
  PV.display();
  PP.display();
  LT.display();
}
void MULTIPLE() {
  if (FAQS.mouseOverButton()) {
    background(100);
  }
  if (ABOUTUS.mouseOverButton()) {
    background(200);
  }
  if (TUTORIAL.mouseOverButton()) {
    background(50);
  }
}
void LOGIN () {
  jcam.beginHUD();
  background(217, 215, 197);
  dibuixaZonaLogo2();
  dibuixaLogin(); //se pot posar una vegada i modificar height fora haver de cridar sa funció??
  jcam.endHUD();
}
