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

    if (addElement.mouseOverButton()) {
      enableCamera=false;
      jcam.setActive(enableCamera);
      tria1.v=true;

      //START APARTAT ADDPOINT
      if (tria1.addPoint.mouseOverButton()) {
        println("jcam");
        enableCamera=false;
        jcam.setActive(enableCamera);
        PF.display();
        PF.visible=true;

        if (PF.closePF.mouseOverButton()) { //No s'executa
          PF.visible=false;

          println("executed");
        } else if (PF.add.mouseOverButton()) {
          //aquí se fa s'insert de ses dades
          /*  String idFigura = "1";
           String nombrePunto = PF.name.text;
           String x = PF.tpf[0].text;
           String y = PF.tpf[0].text;
           String z = PF.tpf[0].text;
           insertPoint(nombrePunto, x, y, z, idFigura);*/
        }
      }
    }


    //END APARTAT ADDPOINT

    //START APARTAT ADDRECT
    else if (tria1.addRect.mouseOverButton()) {
      //CREAR I VISIBILITZAR CHECKBOXES (FENT UN SELECT POINT)
      //INSERT FIGURA
    }
    //END APARTAT ADDRECT

    //START APARTAT ADDPLANE
    else if (tria1.addPlane.mouseOverButton()) {
      //CREAR I VISIBILITZAR CHECKBOXES (FENT UN SELECT POINT)
      //INSERT FIGURA
    }
    //END APARTAT ADDPLANE

    //AFEGIR APARTAT ADD FIGURE A WORKSPACE2
    else if (tria1.close.mouseOverButton()) {
      tria1.v=false; //TANCAR ES TRIA1
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
