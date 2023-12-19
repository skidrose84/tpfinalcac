/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import java.util.Date;



/**
 *
 * @author lucas
 */
public class Usuario {
    
   private int idUsuario; 
   private  String nombre;
   private String email;
   private String contraseña;
   private Date fechaAlta;
   
   public Usuario(){
       
   }

    public Usuario(int idUsuario,String nombre, String email, String contraseña, Date fechaAlta) {
        this.idUsuario=idUsuario;
        this.nombre = nombre;
        this.email = email;
        this.contraseña = contraseña;
        this.fechaAlta=fechaAlta;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public Date getFechaAlta() {
        return fechaAlta;
    }

    public void setFechaAlta(Date fechaAlta) {
        this.fechaAlta = fechaAlta;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }
    
    
    
    
}
