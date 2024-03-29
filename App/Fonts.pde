// Fitxer amb la informació dels Fonts de l'App

// Array de tipografies
PFont[] fonts;
PFont titol, subtitol, paragraf;

// Estableix les fonts de l'App
void setFonts() {
  this.fonts = new PFont[3];
  this.fonts[0] = createFont("CaviarDreams.ttf", midaTitol);
  this.fonts[1] = createFont("LouisGeorgeCafe.ttf", midaSubtitol);
  this.fonts[2] = createFont("ChampagneAndLimousines.ttf", midaParagraf);
  titol=this.fonts[0];
  subtitol=this.fonts[1];
  paragraf=this.fonts[2];
}

// Getter del número de fonts
int getNumFonts() {
  setFonts();
  return this.fonts.length;
}

// Getter de la font primaria
PFont getFirstFont() {
  setFonts();
  return this.fonts[0];
}

// Getter del font secundaria
PFont getSecondFont() {
  setFonts();
  return this.fonts[1];
}

// Getter del la font terciaria
PFont getThirdFont() {
  setFonts();
  return this.fonts[2];
}

// Getter de la font i-èssima
PFont getFontAt(int i) {
  setFonts();
  return this.fonts[i];
}



// Dibuixa les font de l'App
void displayFonts(float x, float y, float h) {
  pushStyle();
  for (int i=0; i<getNumFonts(); i++) {
    fill(0);
    stroke(0);
    strokeWeight(3);
    textFont(getFontAt(i));
    text("Tipografia "+i, x, y + i*h);
  }
  popStyle();
}
