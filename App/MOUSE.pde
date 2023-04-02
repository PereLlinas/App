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
      pantalla=PANTALLA.WORKSPACE1; //AFEGIR OPCIONALITAT ENTRE NIVELLS
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
    //WORKSPACE1
  } else if (pantalla==PANTALLA.WORKSPACE1) {

    // CLICK SOBRE BOTÓ ADD ELEMENT
    if (addElement.mouseOverButton()) {
      enableCamera=false;
      jcam.setActive(enableCamera);
      tria1.v=true;
    }

    //  CLICK SOBRE ADD POINT DEL TRIA1
    else if (tria1.addPoint1.mouseOverButton()) {
      enableCamera=false;
      jcam.setActive(enableCamera);
      tria1.v=false;
      PF.visible=true;
    }
    // CLICK SOBRE BOTÓ DE TANCAR DEL PF
    else if (PF.visible && PF.closePF.mouseOverButton()) {
      PF.visible=false;
    }
    // CLICK SOBRE EL BOTÓ ADD DEL PF
    else if (PF.visible && PF.add.mouseOverButton()) { 
      //aquí se fa s'insert de ses dades
       /*String idFigura = "1";
       String nombrePunto = PF.name.text;
       String x = PF.tpf[0].text;
       String y = PF.tpf[0].text;
       String z = PF.tpf[0].text;
       insertPoint(nombrePunto, x, y, z, idFigura);*/
    }
    // CLICK SOBRE CAMPS DEL PF
    else if (PF.visible) {
      PF.isPressed();
    }

    //CLICK SOBRE BOTÓ ADD RECT
    else if (tria1.addRect1.mouseOverButton()) {
      //CREAR I VISIBILITZAR CHECKBOXES (FENT UN SELECT POINT)
      //INSERT FIGURA
    }

    //CLICK SOBRE BOTÓ ADD PLANE
    else if (tria1.addPlane1.mouseOverButton()) {
      //CREAR I VISIBILITZAR CHECKBOXES (FENT UN SELECT POINT)
      //INSERT FIGURA
    }

    //CLICK SOBRE TANCAR TRIA1
    else if (tria1.close.mouseOverButton()) {
      tria1.v=false;
      enableCamera=true;
      jcam.setActive(enableCamera);
    }
  }


  //WORKSPACE2
  else if (pantalla==PANTALLA.WORKSPACE2) {
    if (addElement.mouseOverButton()) {
      //tria2.v = true;
    }
  }
}
