
enum PANTALLA {LOGIN, HOME, WORKSPACE, FOLDERS};
PANTALLA pantalla=PANTALLA.HOME;

void setup() {
  // Dimensions de l'App
  fullScreen();
  setMedias();
}

void draw() {
  switch(pantalla){
    case HOME: HOME();break;
    case LOGIN: LOGIN();break;
    case WORKSPACE: WORKSPACE();break;
    case FOLDERS: FOLDERS();break;
  }
  println("X: "+mouseX+", Y:"+mouseY);
}
