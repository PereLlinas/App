import de.bezier.data.sql.*;
import de.bezier.data.sql.mapper.*;

enum PANTALLA {LOGIN, HOME, WORKSPACE1, WORKSPACE2, FAQS, ABOUTUS, TUTORIAL};
PANTALLA pantalla=PANTALLA.WORKSPACE1;

//càmera (origen de coordenades se posa al centre)
import peasy.*;
PeasyCam jcam;
float zoomValue=1000.0;

void setup() {
  // Dimensions de l'App
  fullScreen(P3D);
  jcam=new PeasyCam(this, 3000); //profunditat màx.
  setMedias();
  setGUI();
  setPunts();
  connexioBBDD();
}

void draw() {
  switch(pantalla){
    
    case HOME: HOME();break;
    case LOGIN: LOGIN();break;
    case FAQS: FAQS();break;
    case ABOUTUS: ABOUTUS();break;
    case TUTORIAL: TUTORIAL();break;
    
    case WORKSPACE1: WORKSPACE1();break;
    case WORKSPACE2: WORKSPACE2();break;
  }
  
  //println("X: "+mouseX+", Y:"+mouseY);
}
