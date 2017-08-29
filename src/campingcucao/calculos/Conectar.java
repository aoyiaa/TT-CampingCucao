/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package campingcucao.calculos;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;


public class Conectar {
    Connection conectar = null;
    public Connection conexion(){
        try{
            Class.forName("com.mysql.jdbc.Driver"); //Metodo de la clase para conectar a la BD
            conectar = DriverManager.getConnection("jdbc:mysql://localhost/CampingCucao","root",""); // Establece conexion a la BD,
                                                                                                       //UBICACION
                                                                                                       //NOMBRE BD
                                                                                                       //USER Y PASS DE BD
        
        }catch (Exception e){
            System.out.print("Error " +e.getMessage()); //Devuelve un error en la conexion a la BD
            
        }
        return conectar;
    }
}
