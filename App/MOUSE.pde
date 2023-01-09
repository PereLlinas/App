void mousePressed() {


  // Elements comuns a totes les pantalles
  // sidebar

  //enum PANTALLA {LOGIN, HOME, WORKSPACE1, FOLDERS};
  if (pantalla==PANTALLA.LOGIN) {
    userText.isPressed();
    passText.isPressed();
    if (loginButton.mouseOverButton()&&comprovaLogin()) {
      pantalla = PANTALLA.HOME;
    }
  }
  if (pantalla==PANTALLA.HOME) {
    if (createButton.mouseOverButton()) {
      pantalla=PANTALLA.WORKSPACE1;
    }
    if (HOME.mouseOverButton()) {
      pantalla=PANTALLA.HOME;
    }
    if (FAQS.mouseOverButton()) {
      pantalla=PANTALLA.MULTIPLE;
    }
    if (ABOUTUS.mouseOverButton()) {
      pantalla=PANTALLA.MULTIPLE;
    }
    if (TUTORIAL.mouseOverButton()) {
      pantalla=PANTALLA.MULTIPLE;
    }
  }
  if (pantalla==PANTALLA.MULTIPLE) {
    if (HOME.mouseOverButton()) {
      pantalla=PANTALLA.HOME;
    }
    if (FAQS.mouseOverButton()) {
      pantalla=PANTALLA.MULTIPLE;
    }
    if (ABOUTUS.mouseOverButton()) {
      pantalla=PANTALLA.MULTIPLE;
    }
    if (TUTORIAL.mouseOverButton()) {
      pantalla=PANTALLA.MULTIPLE;
    }
  }
}

void keyPressed() {

  if (pantalla==PANTALLA.LOGIN) {
    userText.keyPressed(key, (int)keyCode);
    passText.keyPressed(key, (int)keyCode);
  }
}
