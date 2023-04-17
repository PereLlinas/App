boolean enableCamera = true;

void keyPressed() {

  if (pantalla==PANTALLA.LOGIN) {
    userText.keyPressed(key, (int)keyCode);
    passText.keyPressed(key, (int)keyCode);
  } else if (pantalla==PANTALLA.WORKSPACE1 || pantalla==PANTALLA.WORKSPACE2) {
    if (PF.visible) {
      PF.keyPressed(key, (int)keyCode);
      PF.name.keyPressed(key, keyCode);
    }
    if (figuresPF.visible) {
      PF.keyPressed(key, (int)keyCode);
    }
  }
}
