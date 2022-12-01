

void mousePressed(){
  
  
  // Elements comuns a totes les pantalles
  // sidebar
  
  //enum PANTALLA {LOGIN, HOME, WORKSPACE, FOLDERS};
  if(pantalla==PANTALLA.LOGIN){
     userText.isPressed();
     passText.isPressed();
    if(loginButton.mouseOverButton()){
      pantalla = PANTALLA.HOME;
    }
  }
}

void keyPressed(){
  
  if(pantalla==PANTALLA.LOGIN){
     userText.keyPressed(key,(int)keyCode);
     passText.keyPressed(key,(int)keyCode);
  }
}
