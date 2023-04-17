void mousePressed() {

  //println("MOUSE PRESSED");

  // ELEMENTS COMUNs A TOTES LES PANTALLES
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
      confirm.visible=true;
    } else if (confirm.visible==true && confirm.level1.mouseOverButton()) {
      pantalla=PANTALLA.WORKSPACE1;
      confirm.visible=false;
      insertLevel("1", "Level 1");
    } else if (confirm.level2.mouseOverButton() && confirm.visible==true) {
      pantalla=PANTALLA.WORKSPACE2;
      confirm.visible=false;
      insertLevel("2", "Level 2");
    } else if (FAQS.mouseOverButton()) {
      pantalla=PANTALLA.FAQS;
    } else if (ABOUTUS.mouseOverButton()) {
      pantalla=PANTALLA.ABOUTUS;
    } else if (TUTORIAL.mouseOverButton()) {
      pantalla=PANTALLA.TUTORIAL;
    }

    // FINAL PANTALLA HOME
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
    if (addElement1.mouseOverButton()) {
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
    } else if (tria1.addRect1.mouseOverButton()) {
      cb1.v=true;
      enableCamera=false;
      jcam.setActive(enableCamera);
      tria1.v=false;
    } else if (cb1.v || cb2.v) {
      cb1.checkMouse();
      cb2.checkMouse();
    } else if (cb1.create1.mouseOverButton()) {
      //r1.v=true;
      print("merda");
      cb1.v=false;
      enableCamera=true;
      jcam.setActive(enableCamera);
    } else if (cb2.v && cb2.create2.mouseOverButton()) {
      //p1.display();
      cb1.v=false;
      enableCamera=true;
      jcam.setActive(enableCamera);
    } else if (tria1.addPlane1.mouseOverButton()) {
      cb2.setNumMaxChecked(3);
      cb2.checkMouse();
      cb2.v=true;
      enableCamera=false;
      jcam.setActive(enableCamera);
      tria1.v=false;
    }

    // CLICK SOBRE BOTÓ DE TANCAR DEL PF
    else if (PF.visible && PF.closePF.mouseOverButton()) {
      PF.visible=false;
      enableCamera=true;
      jcam.setActive(enableCamera);
    }

    // CLICK SOBRE EL BOTÓ ADD DEL PF
    else if (PF.visible && PF.add.mouseOverButton()) {
      PF.addPoint();
      PF.addPointDataBase();
      PF.visible=false;
      enableCamera=true;
      jcam.setActive(enableCamera);
    }

    // CLICK SOBRE CAMPS DEL PF
    else if (PF.visible) {
      PF.isPressed();
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

    // Si pitjam sobre el select
    else if (selectPunts.mouseOverSelect() && selectPunts.enabled) {
      if (!selectPunts.collapsed) {
        selectPunts.update();      // Actualitzar valor
        n = selectPunts.clickedOption();
      }
      selectPunts.toggle();        // Plegar o desplegar
    } else {
      selectPunts.reset();
      n = -1;
    }
  }



  //WORKSPACE2
  else if (pantalla==PANTALLA.WORKSPACE2) {

    // CLICK SOBRE BOTÓ ADD ELEMENT
    if (addElement2.mouseOverButton()) {
      enableCamera=false;
      jcam.setActive(enableCamera);
      tria2.v=true;
    }

    //  CLICK SOBRE ADD POINT DEL TRIA2
    else if (tria2.addPoint2.mouseOverButton() && tria2.v) {
      enableCamera=false;
      jcam.setActive(enableCamera);
      tria2.v=false;
      PF.visible=true;
    }

    // CLICK SOBRE CAMPS DEL PF
    else if (PF.visible) {
      PF.isPressed();
    }

    // CLICK SOBRE BOTÓ DE TANCAR DEL PF
    else if (PF.visible && PF.closePF.mouseOverButton() && tria2.v==false) {
      PF.visible=false;
      enableCamera=true;
      jcam.setActive(enableCamera);
    }

    // CLICK SOBRE EL BOTÓ ADD DEL PF
    else if (PF.visible && PF.add.mouseOverButton() && tria2.v==false) {
      PF.addPoint();
      PF.addPointDataBase();
      PF.visible=false;
      enableCamera=true;
      jcam.setActive(enableCamera);
    }

    //CLICK SOBRE BOTÓ ADD RECT
    else if (tria2.addRect2.mouseOverButton() && tria2.v) {
      //CREAR I VISIBILITZAR CHECKBOXES (FENT UN SELECT POINT)
      //INSERT FIGURA
    }

    //CLICK SOBRE BOTÓ ADD PLANE
    else if (tria2.addPlane2.mouseOverButton() && tria2.v) {
      //CREAR I VISIBILITZAR CHECKBOXES (FENT UN SELECT POINT)
      //INSERT FIGURA
    }

    //CLICK SOBRE TANCAR TRIA2
    else if (tria2.close.mouseOverButton() && tria2.v) {
      tria2.v=false;
      enableCamera=true;
      jcam.setActive(enableCamera);
    }

    //CLICK SOBRE BOTÓ ADD PLANE
    else if (tria2.addFigure2.mouseOverButton()) {
      enableCamera=false;
      jcam.setActive(enableCamera);
      triaFigura.v=true;
      tria2.v=false;
    }

    //Botons triaFigura

    else if (triaFigura.addPira.mouseOverButton() && triaFigura.v==true) {
      triaFigura.v=false;
      figuresPF.addPira();
      enableCamera=true;
      jcam.setActive(enableCamera);
    } else if (triaFigura.addOcta.mouseOverButton() && triaFigura.v==true) {
      triaFigura.v=false;
      figuresPF.addOcta();
      enableCamera=true;
      jcam.setActive(enableCamera);
    } else if (triaFigura.addCubo.mouseOverButton() && triaFigura.v==true) {
      triaFigura.v=false;
      figuresPF.addCubo();
      enableCamera=true;
      jcam.setActive(enableCamera);
    } else if (triaFigura.addTetra.mouseOverButton() && triaFigura.v==true) {
      triaFigura.v=false;
      figuresPF.addTetra();
      enableCamera=true;
      jcam.setActive(enableCamera);
    } else if (figuresPF.add.mouseOverButton()) {
      figuresPF.addPira();
      figuresPF.visible=false;
      enableCamera=true;
      jcam.setActive(enableCamera);
    }

    // CLICK SOBRE CAMPS DEL PF
    else if (figuresPF.visible) {
      figuresPF.isPressed();
    }

    //CLICK SOBRE TANCAR TRIAFIGURA
    else if (triaFigura.close.mouseOverButton() && triaFigura.v==true) {
      triaFigura.v=false;
      enableCamera=true;
      jcam.setActive(enableCamera);
    }

    // Si pitjam sobre el select
    else if (selectPunts.mouseOverSelect() && selectPunts.enabled) {
      if (!selectPunts.collapsed) {
        selectPunts.update();      // Actualitzar valor
        n = selectPunts.clickedOption();
      }
      selectPunts.toggle();        // Plegar o desplegar
    } else {
      selectPunts.reset();
      n = -1;
    }
  }
}
