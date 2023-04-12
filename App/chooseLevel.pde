class chooseLevel {
  //atributs
  int x, y;
  Button level1, level2;
  //boolea per sa visibilitat
  boolean v;

  //constructor
  chooseLevel(int x, int y) {
    this.x=x;
    this.y=y;
    this.level1=new Button ("Level 1", -750, 550, 500, 250, "");
    this.level2=new Button ("Level 2", 750, 550, 500, 250, "");
    this.v=false;
  }

  void display() {
    if (this.v) {
      pushStyle();
      fill(217, 215, 197);
      strokeWeight(5);
      rectMode(CENTER);
      rect(0, 0, 2400, 1600);
      level1.display();
      level2.display();
      popStyle();
    }
  }
}
