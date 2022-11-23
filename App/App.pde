// Objectes de la classe Cercle
Cercle c1, c2, c3;

RadioButton rb1, rb2, rb3;

float r, g, b;


void setup() {
  // Dimensions de l'App
  fullScreen();

  // Inicialitza els colors de l'App
  setColors();
  setMedias();
  setFonts();
}


void draw() {
  HOME();
  LOGIN();
  FOLDERS();
  println("X: "+mouseX+", Y:"+mouseY);
}

// Si pitjam el ratolí, miram si ho fem sobre un checkbox
void mousePressed() {
  if (rb1.onMouseOver()) {
    rb1.toggle();
  } else if (rb2.onMouseOver()) {
    rb2.toggle();
  } else if (rb3.onMouseOver()) {
    rb3.toggle();
  }
}
