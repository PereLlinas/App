// Classe Botó. Canviar constructor (o emplear setters i getters) perquè es colors són terribles i han de ser diferents en cada cas.
color c1, c2;
int ts=20;

class Button {

  // Propietats d'un botó:
  float x, y, w, h;  // Posició i dimensions

  // Colors de contorn, farciment, actiu i desactiu
  color fillColor, strokeColor;
  color fillColorOver, fillColorDisabled;

  String textBoto;  // Text
  boolean enabled;  // Abilitat / desabilitat
  String colorButton;

  // Mètode Constructor
  Button(String text, float x, float y, float w, float h, String colorButton) {
    this.textBoto = text;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.enabled = true;
    this.colorButton=colorButton;
    getColor(colorButton);
    c1=color (colors[indexColor]);
    c2=color (colors[indexColor+6]);
    fillColor = c1;
    fillColorOver = c2;
    fillColorDisabled = color(150);
    strokeColor = color(0);
  }


  // Setters

  void setEnabled(boolean b) {
    this.enabled = b;
  }

  void setButtonName(String t) {
    this.textBoto = t;
  }

  void setButtonColor(String f) {
    getColor(f);
    c1=colors[indexColor];
    c2=colors[indexColor+5];
  }

  int setTextSize(int i) {
    ts=i;
    return ts;
  }

  // Dibuixa el botó
  //String f
  void display() {
    pushStyle();
    if (this.enabled==true) {
      if (!enabled) {
        fill(fillColorDisabled);  // Color desabilitat
      } else if (mouseOverButton()) {
        fill(fillColorOver);      // Color quan ratolí a sobre
      } else {
        fill(fillColor);          // Color actiu però ratolí fora
      }
      stroke(strokeColor);
      strokeWeight(2);        //Color i gruixa del contorn
      rect(this.x, this.y, this.w, this.h, 10);    // Rectangle del botó

      // Text (color, alineació i mida)
      fill(0);
      textAlign(CENTER);
      textSize(ts);
      text(textBoto, this.x + this.w/2, this.y + this.h/2 + 10);
      popStyle();
    }
  }

  // Indica si el cursor està sobre el botó
  boolean mouseOverButton() {
    return (mouseX >= this.x) &&
      (mouseX<=this.x + this.w) &&
      (mouseY>= this.y) &&
      (mouseY<= this.y + this.h);
  }
}
