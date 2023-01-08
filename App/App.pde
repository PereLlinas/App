enum PANTALLA {LOGIN, HOME, WORKSPACE1, WORKSPACE2, FOLDERS};
PANTALLA pantalla=PANTALLA.HOME;

//càmera (origen de coordenades se posa al centre)
import peasy.*;
PeasyCam jcam;
float zoomValue=1000.0;

void setup() {
  // Dimensions de l'App
  fullScreen(P3D);
  jcam=new PeasyCam(this, 2000); //profunditat màx.
  setMedias();
  setGUI();
}

void draw() {
  switch(pantalla){
    case HOME: HOME();break;
    case LOGIN: LOGIN();break;
    case FOLDERS: FOLDERS();break;
    case WORKSPACE1: WORKSPACE1();break;
    case WORKSPACE2: WORKSPACE2();break;
  }
  
  println("X: "+mouseX+", Y:"+mouseY);
}
