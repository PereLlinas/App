void HOME() { // + botó CREATE + Textos + POP-UPS
  background(217, 215, 197);
  dibuixaBanner();
  dibuixaSideBar(); 
  dibuixaZonaLogo();
  dibuixaZonaCarpetes();
  createButton.display();
  //afegir cards per cada creació
}

void WORKSPACE() {
  background(255);
  dibuixaBanner(); 
  dibuixaSideBar(); //pop-ups que se generin a una altura concreta
  dibuixaProjeccions();
}

void FOLDERS() { // + botó CREATE + Textos + POP-UPS
  dibuixaBanner();
  dibuixaSideBar();
  dibuixaZonaLogo();
  dibuixaZonaCarpetes();
}

void LOGIN () {
  background(217, 215, 197);
  dibuixaZonaLogo2();
  dibuixaLogin(); //se pot posar una vegada i modificar height fora haver de cridar sa funció??
}
