/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Cripto;
import util.ConexionDB;

/**
 *
 * @author lucas
 */
public class CriptoDAO {
     public void altaCripto(Cripto cripto) {
        String sql = "INSERT INTO criptomonedas (nombre_cripto, ticker, fecha_alta) VALUES (?, ?, ?)";
        //bloque try-with-resources
        //asegura que los recursos abiertos en su declaración (dentro de los paréntesis) se cierren automáticamente al final del bloque try 
        try (Connection conn = ConexionDB.conectar();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            
            pstmt.setString(1, cripto.getNombreCripto());
            pstmt.setString(2, cripto.getTicker());
            pstmt.setDate(3, (Date) cripto.getFechaAlta());
           
          
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    // Método para LEER TODOS LOS REGISTROS
    public List<Cripto> obtenerTodas() {
        List<Cripto> criptos = new ArrayList<>();
        String sql = "SELECT * FROM criptomonedas";
        try (Connection conn = ConexionDB.conectar();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                Cripto cripto = new Cripto();
                cripto.setIdCripto(rs.getInt("id"));
                cripto.setNombreCripto(rs.getString("nombre_cripto"));
                cripto.setTicker(rs.getString("ticker"));
                cripto.setFechaAlta(rs.getDate("fecha_alta"));
               
                criptos.add(cripto);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return criptos;
    }
    
        public Cripto obtenerPorId(int id) {
        String sql = "SELECT * FROM criptomonedas WHERE id = ?";
        try (Connection conn = ConexionDB.conectar();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                Cripto cripto = new Cripto();
                cripto.setIdCripto(rs.getInt("id"));
                cripto.setNombreCripto(rs.getString("nombre_cripto"));
                cripto.setTicker(rs.getString("ticker"));
                cripto.setFechaAlta(rs.getDate("fecha_alta"));
                
                
               
                return cripto;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
        
        public void actualizarCripto(Cripto cripto) {
        String sql = "UPDATE criptomonedas SET nombre_cripto = ?, ticker = ?, fecha_alta= ? WHERE id = ?";
        try (Connection conn = ConexionDB.conectar();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, cripto.getNombreCripto());
            pstmt.setString(2, cripto.getTicker());
            pstmt.setDate(3, (Date) cripto.getFechaAlta());
             pstmt.setInt(4, cripto.getIdCripto());
           
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
        
        public void eliminarCripto(int id) {
        String sql = "DELETE FROM criptomonedas WHERE id = ?";
        try (Connection conn = ConexionDB.conectar();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, id);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

        
}
