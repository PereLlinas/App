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
  dibuixaZonaLogo();

  //BOTONS
  SAVE.display(); //pendent
  PRINT.display(); //pendent
  TUTORIAL.display(); //pendent
  HOME.display(); //fer setter per canviar es nom i sa funció d'es boto
  addElement1.display(); //pendent

  // Dibuixa el select
  if (numPunts!=0) {
    if (n!=-1) {
      punts[n].dibuixaInfo(1520, 900, 350, 150);
    }
    selectPunts.display();
  }

  tria1.display();
  PF.display();
  cbsr.display();
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

  for (int i=0; i<numPunts; i++) {
    punts[i].display();
  }

  for (int i=0; i<numPira; i++) {
    piramide[i].display();
  }

  for (int i=0; i<numOcta; i++) {
    octa[i].display();
  }
  
  for (int i=0; i<numCubo; i++) {
    cubo[i].display();
  }
  
  for (int i=0; i<numTetra; i++) {
    tetra[i].display();
  }

  //Figures
  /*cubo.display();
   tetraedre.display();
   octaedre.display();*/

  jcam.beginHUD();
  // Dibuixa el select
  if (numPunts!=0) {
    if (n!=-1) {
      punts[n].dibuixaInfo(1520, 900, 350, 150);
    }
    selectPunts.display();
  }
  dibuixaBanner();
  dibuixaZonaLogo();

  //BOTONS
  addElement2.display();
  SAVE.display(); //pendent
  PRINT.display(); //pendent
  TUTORIAL.display(); //pendent

  tria2.display();
  triaFigura.display();
  PF.display();
  figuresPF.display();
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
  getColor("beige");
  background(colors[indexColor]);
  dibuixaBanner();
  TUTORIALdisplay();
  dibuixaZonaLogo();
  HOME.display();
  FAQS.display();
  ABOUTUS.display();
  TUTORIAL.display();
  jcam.endHUD();
}

void ABOUTUS() {
  jcam.beginHUD();
  getColor("beige");
  background(colors[indexColor]);
  dibuixaBanner();
  ABOUTUSdisplay();
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
