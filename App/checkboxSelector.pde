class CheckBoxSelector {
  
  Button create1, create2;

  // Propietats (posició i dimensions)
  float x, y, w, h;
  float margeV = 15;

  // Propietats(informació i checkboxes)
  String[] info;
  CheckBoxText[] cbs;
  int numMaxChecked = 2;

  boolean v;

  Recta r1;
  Pla p1;

  // Constructor
  CheckBoxSelector(String[] info, float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;

    this.v=false;

    create1=new Button("CREATE LINE", 1045, 670, 120, 50, "blau");
    create2=new Button("CREATE PLANE", 1025, 670, 140, 50, "blau");

    r1=new Recta("AB", puntsCreats[0], puntsCreats[1]);
    p1=new Pla(puntsCreats[0], puntsCreats[1], puntsCreats[2]);


    this.info = info;
    this.cbs = new CheckBoxText[ info.length ];
    for (int i=0; i<info.length; i++) {
      cbs[i] = new CheckBoxText(info[i], x, y + (h+margeV)*i, w, h);
    }
  }

  // Actualitzam la informació del checkboxlist
  void setInfo(String[] info) {
    this.info = info;
    this.cbs = new CheckBoxText[ info.length ];
    for (int i=0; i<info.length; i++) {
      cbs[i] = new CheckBoxText(info[i], x, y + h*i, w, h);
    }
  }

  // Defineix el màxim d'elements marcats
  void setNumMaxChecked(int n) {
    this.numMaxChecked = n;
  }

  // Dibuixam el checkboxlist
  void display() {
    if (this.v==true) {
      getColor("obscur");
      stroke(color(colors[indexColor]));
      strokeWeight(2);
      getColor("clar");
      fill(color(colors[indexColor]));
      rect(width/2-250, height/2-200, 500, 400);
      fill(0);
      textFont(getFontAt(0));
      textSize(34);
      text("CHOOSE POINTS", width/2-230, height/2-150);
      for (CheckBoxText cb : cbs) {
        cb.display();
      }
      if (numMaxChecked==2) {
        create1.display();
      } else if (numMaxChecked==3) {
        create2.display();
      }
    }
  }

  // Comprova si feim click sobre algun checkbox
  void checkMouse() {
    for (CheckBoxText cb : cbs) {
      if (cb.onMouseOver()) {
        if (!cb.checked && getNumSelected()<numMaxChecked) {
          cb.checked = true;
        } else if (cb.checked) {
          cb.checked = false;
        }
        break;
      }
    }
  }

  // Retorna si el checkBox n està seleccionat
  boolean isChecked(int n) {
    return cbs[n].checked;
  }

  // Retorna si el checkBox amb texte s està seleccionat
  boolean isChecked(String s) {
    for (CheckBoxText cb : cbs) {
      if (cb.texte.equals(s)) {
        return cb.checked;
      }
    }
    return false;
  }

  // Retorna true si el mouse està sobre algun checkbox
  boolean checkCursor() {
    for (CheckBoxText cb : cbs) {
      if (cb.onMouseOver()) {
        return true;
      }
    }
    return false;
  }

  // Retorna el número d'elements seleccionats
  int getNumSelected() {
    int n = 0;
    for (CheckBoxText cb : cbs) {
      if (cb.checked) {
        n++;
      }
    }
    return n;
  }

  // Retorna un array amb el nom dels elements seleccionats
  String[] getSelectedItems() {
    int n = getNumSelected();
    String[] items = new String[n];
    int i=0;
    for (CheckBoxText cb : cbs) {
      if (cb.checked) {
        items[i] = cb.texte;
        i++;
      }
    }
    return items;
  }
}
