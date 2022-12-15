void mousePressed() {


  // Elements comuns a totes les pantalles
  // sidebar

  //enum PANTALLA {LOGIN, HOME, WORKSPACE, FOLDERS};
  if (pantalla==PANTALLA.LOGIN) {
    userText.isPressed();
    passText.isPressed();
    if (loginButton.mouseOverButton()&&comprovaLogin()) {
      pantalla = PANTALLA.HOME;
    }
  }
  if (pantalla==PANTALLA.HOME) {
    if (createButton.mouseOverButton()) {
      pantalla=PANTALLA.WORKSPACE;
    }
  }
}

void keyPressed() {

  if (pantalla==PANTALLA.LOGIN) {
    userText.keyPressed(key, (int)keyCode);
    passText.keyPressed(key, (int)keyCode);
  }
}
