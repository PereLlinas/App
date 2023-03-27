void mousePressed() {

  // Elements comuns a totes les pantalles
  // sidebar
  println("MOUSE PRESSED");

  // ELEMENTS COMUNA A TOTES LES PANTALLES
  if (HOME.mouseOverButton()) {
    pantalla=PANTALLA.HOME;
    fonsPantalla = color(255, 0, 0);
  }

  //enum PANTALLA {LOGIN, HOME, WORKSPACE1, WORKSPACE2, ABOUTUS, FAQS, TUTORIAL};
  if (pantalla==PANTALLA.LOGIN) {
    userText.isPressed();
    passText.isPressed();
    if (loginButton.mouseOverButton()&&comprovaLogin()) {
      pantalla = PANTALLA.HOME;
    }
  } else if (pantalla==PANTALLA.HOME) {

    if (createButton.mouseOverButton()) {
      pantalla=PANTALLA.WORKSPACE1;
    } else if (FAQS.mouseOverButton()) {
      pantalla=PANTALLA.FAQS;
    } else if (ABOUTUS.mouseOverButton()) {
      pantalla=PANTALLA.ABOUTUS;
    } else if (TUTORIAL.mouseOverButton()) {
      pantalla=PANTALLA.TUTORIAL;
    }
  } else if (pantalla==PANTALLA.ABOUTUS) {

    if (FAQS.mouseOverButton()) {
      pantalla=PANTALLA.FAQS;
    } else if (ABOUTUS.mouseOverButton()) {
      pantalla=PANTALLA.ABOUTUS;
    } else if (TUTORIAL.mouseOverButton()) {
      pantalla=PANTALLA.TUTORIAL;
    }
  } else if (pantalla==PANTALLA.TUTORIAL) {

    if (FAQS.mouseOverButton()) {
      pantalla=PANTALLA.FAQS;
    } else if (ABOUTUS.mouseOverButton()) {
      pantalla=PANTALLA.ABOUTUS;
    } else if (TUTORIAL.mouseOverButton()) {
      pantalla=PANTALLA.TUTORIAL;
    }
  } else if (pantalla==PANTALLA.FAQS) {

    if (FAQS.mouseOverButton()) {
      pantalla=PANTALLA.FAQS;
    } else if (ABOUTUS.mouseOverButton()) {
      pantalla=PANTALLA.ABOUTUS;
    } else if (TUTORIAL.mouseOverButton()) {
      pantalla=PANTALLA.TUTORIAL;
    }
  } else if (pantalla==PANTALLA.WORKSPACE1) {
    /*  NAME.isPressed;
     if(NAME.mouseOverButton()){
     //TextPositionField(String lt, float x, float y, float w, float h) {
     
     NAME.setButtonName()
     }*/    //falta un else a lo de després
    if (addElement.mouseOverButton()) {
      tria1.v = true;
    } else if (tria1.addPoint.mouseOverButton()) {
      println("jcam");
      enableCamera=false;
      jcam.setActive(enableCamera);
      tria1.v = false;
      PF.visible=true;
    } else if (PF.visible) {
      PF.isPressed();
    }
    if (PF.closePF.mouseOverButton()) {
      PF.visible=false;
      enableCamera=true;
      jcam.setActive(enableCamera);
    }
    if (PF.add.mouseOverButton){
      //aquí se fa s'insert de ses dades
    }
  } else if (pantalla==PANTALLA.WORKSPACE2) {
    if (addElement.mouseOverButton()) {
      tria1.v = true;
    }
  }
