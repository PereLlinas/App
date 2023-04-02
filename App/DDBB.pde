// Llibreria de MySQL i Processing
import de.bezier.data.sql.*;
import de.bezier.data.sql.mapper.*;

// Objecte de connexió a la BBDD
MySQL msql;

void connexioBBDD(){
    
    // Paràmetres de la connexió
    String user     = "admin";
    String pass     = "12345";   
    String database = "app";
    // bildwelt?useUnicode=true&characterEncoding=UTF-8 // =latin1
    //useUnicode=true&character_set_server=utf8mb4&useLegacyDatetimeCode=false
    
    // Establim la connexió
    msql = new MySQL( this, "localhost", database, user, pass);
    
    // Si la connexió s'ha establert
    if (msql.connect()){
        // La connexió ha funcionat!!!
        println("Connected to database!!");
    }
    else {
      // La connexió ha fallat!!!
      println("Connection failed !");
    }
}

void insertLevel(String idLevel, String nomLevel){
  String q = "INSERT INTO nivel (idLevel, nomLevel) VALUES ('"+idLevel+"','"+nomLevel+"')";
  println(q);
  msql.query(q);
}

void insertPoint(String nomPunto, String x, String y, String z, String figura_idFigura){
  String q = "INSERT INTO punto (nomPunto, x, y, z, figura_idFigura) VALUES ('"+nomPunto+"', '"+x+"', '"+y+"', '"+z+"', '"+figura_idFigura+"')";
  println(q);
  msql.query(q);
}
