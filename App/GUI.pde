TextField userText, passText;
Button loginButton, b2;

void setTextFields(){
   userText = new TextField(width/2-300/2, height/2, 300, 50);
   passText = new TextField(width/2-300/2, (height/2)+70, 300, 50);
}  

void setButtons(){
  loginButton = new Button("LOGIN", 300, 300, 100, 50);
}

void setGUI ( ){
setTextFields();
setButtons();
/*setCheckboxes();*/
}
