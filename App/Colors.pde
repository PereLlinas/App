color[] colors;

void setColors() {
  this.colors=new color[5];
  this.colors[0]=color(81, 101, 140);
  this.colors[1]=color(217, 215, 197);
  this.colors[2]=color(166, 130, 86);
  this.colors[3]=color(140, 57, 38);
  this.colors[4]=color(146, 120, 87);
}

int getNumColors(){
  return this.colors.length;
}

color getBannerColor(){
  return this.colors[0];
}

 color getListColor(){
    return  this.colors[2];
  }
  
  // Getter del color terciari
  color getPlanesColor(){
    return  this.colors[1];
  }
  
  // Getter del color i-èssim
  color getColorAt(int i){
    return this.colors[i];
  }
  
  
  // Dibuixa paleta de colors
  void displayColors(float x, float y, float w){
    pushStyle();
      //Llegenda
      fill(0); textAlign(LEFT); textSize(36);
      text("Colors:", x, y-10);
      
      // Paleta de colors
      float wc = w / getNumColors();
      for(int i=0; i<getNumColors(); i++){
        fill(getColorAt(i)); stroke(0); strokeWeight(3);
        rect(x + i*wc, y, wc, wc);
      }
    popStyle();
  }
