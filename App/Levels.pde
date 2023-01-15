class Levels {
  float xpop=1000, ypop=800, marge=30;
  String titol1, text1, text01, titol2, text2, text02;
  Button level1, level2;

  Levels(String titol1, String text1, String text01, String titol2, String text2, String text02) {
    titol1=this.titol1;
    titol2=this.titol2;
    text1=this.text1;
    text2=this.text2;
    text01=this.text01;
    text02=this.text02;
    level1=new Button("LEVEL 1", -(xpop/2), (ypop/2)-80, 200, 50);
    level2=new Button("LEVEL 2", (xpop/2), (ypop/2)-80, 200, 50);
  }

  void display() {
    float xpop=1000, ypop=800, marge=30, foto=200;
    pushStyle();
    // Rectangle
    stroke(0);
    strokeWeight(10);
    fill(200, 200, 100);
    rect(-(xpop/2), -(ypop/2), 1000, 800);
    line(-(xpop/2), (-(ypop/2))+100, (xpop/2), (-(ypop/2))+100);
    
    //Imatges
    fill(200);
    rect(-(xpop/2)+marge, (-(ypop/2))+150, foto, foto);
    rect(marge, (-(ypop/2))+150, foto, foto);

    // Títol 1
    fill(0);
    textSize(38);
    textAlign(LEFT);
    text(titol1,(-(xpop/2))-marge, (-(ypop/2))+marge);

    // Títol 2
    fill(0);
    textSize(38);
    textAlign(LEFT);
    text(titol2, marge, (-(ypop/2))+marge);
    
    //Text 1 i 01
    fill(0);
    textSize(38);
    textAlign(LEFT);
    //text(text1, (-(xpop/2))-marge, (-(ypop/2))+marge);
    //text(text01, (-(xpop/2))-marge, (-(ypop/2))+marge);
    popStyle();
  }
  
  

  boolean visible = true;
  void setVisible(boolean b) {
    this.visible = b;
    if (!this.visible) {
      this.level1.setEnabled(false);
    } else {
      this.level1.setEnabled(true);
    }
    if (!this.visible) {
      this.level2.setEnabled(false);
    } else {
      this.level2.setEnabled(true);
    }
  }
}
