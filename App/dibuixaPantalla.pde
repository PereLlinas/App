void HOME() { // + botó CREATE + Textos + POP-UPS
  jcam.beginHUD();
  background(217, 215, 197);
  dibuixaBanner();
  dibuixaSideBar();
  dibuixaZonaLogo();
  dibuixaZonaCarpetes();
  createButton.display();
  confirm.display();
  getColor("obscur");
  fill(colors[indexColor]);
  textFont(getFontAt(0));
  text("Dihedral Previewer", 335, 250);
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

  for (int i=0; i<numPunts; i++) {
    punts[i].display();
  }

  jcam.beginHUD();
  //ELEMENTS DECORATIUS
  dibuixaBanner();
  dibuixaSideBar();
  dibuixaZonaLogo();
  dibuixaProjeccions();


  //BOTONS
  SAVE.display(); //pendent
  PRINT.display(); //pendent
  TUTORIAL.display(); //pendent
  HOME.display(); //fer setter per canviar es nom i sa funció d'es boto
  addElement1.display(); //pendent
  tria1.display();
  PF.display();
  PF.infoElement();
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
  dibuixaSideBar();
  dibuixaZonaLogo();
  dibuixaProjeccions();

  //BOTONS
  addElement2.display();
  SAVE.display(); //pendent
  PRINT.display(); //pendent
  TUTORIAL.display(); //pendent

  tria2.display();
  triaFigura.display();
  jcam.endHUD();
}


void FAQS() {
  jcam.beginHUD();
  getColor("beige");
  background(colors[indexColor]);
  dibuixaBanner();
  FAQSdisplay();
  dibuixaZonaLogo();
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
  dibuixaZonaLogo();
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
  dibuixaZonaLogo();
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
