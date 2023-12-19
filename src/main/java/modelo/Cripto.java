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
public class Cripto {
    int idCripto;
    String nombreCripto;
    String ticker;
    Date fechaAlta;
    
    
    public Cripto(){
        
        
    }
     

    public Cripto(int idCripto,String nombreCripto, String ticker,Date fechaAlta ) {
        
        this.idCripto=idCripto;
        this.nombreCripto = nombreCripto;
        this.ticker = ticker;
        this.fechaAlta=fechaAlta;
        
    }

    public Date getFechaAlta() {
        return fechaAlta;
    }

    public void setFechaAlta(Date fechaAlata) {
        this.fechaAlta = fechaAlata;
    }

    public int getIdCripto() {
        return idCripto;
    }

    public void setIdCripto(int idCripto) {
        this.idCripto = idCripto;
    }

    public String getNombreCripto() {
        return nombreCripto;
    }

    public void setNombreCripto(String nombreCripto) {
        this.nombreCripto = nombreCripto;
    }

    public String getTicker() {
        return ticker;
    }

    public void setTicker(String ticker) {
        this.ticker = ticker;
    }

   

    
        
    }

    
    

