enum PANTALLA {LOGIN, HOME, WORKSPACE1, WORKSPACE2, MULTIPLE};
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
    case MULTIPLE: MULTIPLE();break;//aquesta pantalla necessita un if per poder canviar lo que s'hi posi en funció d'es botó seleccionat.
    case WORKSPACE1: WORKSPACE1();break;
    case WORKSPACE2: WORKSPACE2();break;
  }
  
  println("X: "+mouseX+", Y:"+mouseY);
}
