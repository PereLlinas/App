TextField userText, passText;
Button loginButton, createButton, createFolderButton;

void setTextFields(){
   userText = new TextField(width/2-300/2, height/2, 300, 50);
   passText = new TextField(width/2-300/2, (height/2)+70, 300, 50);
}  

void setButtons(){
  loginButton = new Button("LOGIN", width/2-200/2, (height/2)+140, 200, 50);
  createButton=new Button("CREATE", 1900-200, 280-80, 200, 50);
  //createFolderButton=new Button("CREATE FOLDER"
  
}

void setGUI ( ){
setTextFields();
setButtons();
/*setCheckboxes();*/
}
