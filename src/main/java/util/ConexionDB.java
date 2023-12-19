/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author lucas
 */
public class ConexionDB {
    private static final String URL = "jdbc:mysql://localhost:3306/usuarios";
    private static final String USER = "root";
    private static final String PASS = "Bactssa12#";
    
    static {
        try {
            // Carga dinámicamente la clase especificada y la inicializa, retornando su objeto Class.
            Class.forName("com.mysql.cj.jdbc.Driver");
           
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new RuntimeException("Error al cargar el controlador JDBC");
        }
    }
    
      public static Connection conectar() throws SQLException{
        return DriverManager.getConnection(URL, USER, PASS);
    }
    
}


