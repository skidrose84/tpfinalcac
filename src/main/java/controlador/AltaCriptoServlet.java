/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import DAO.CriptoDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import modelo.Cripto;


/**
 *
 * @author lucas
 */
@WebServlet("/vistas/AltaCriptoServlet")
public class AltaCriptoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtener datos del formulario
        String nombreCripto = request.getParameter("nombre");
        String ticker = request.getParameter("ticker");
       
        
     
        

        // Crear un objeto Cripto con los datos
        Cripto cripto = new Cripto();
        cripto.setNombreCripto(nombreCripto);
        cripto.setTicker(ticker);
        

        // Obtener la fecha actual
        java.util.Date fechaActual = new java.util.Date(); //es una forma de utilizar la clase sin necesitar una declaracion 'import'
        cripto.setFechaAlta(new Date(fechaActual.getTime()));

        // Agregar el usuario a la base de datos
        CriptoDAO criptoDAO = new CriptoDAO();
        criptoDAO.altaCripto(cripto);

        // Redireccionar a la página de visualización de criptomonedas
        response.sendRedirect(request.getContextPath() + "/vistas/gestionCriptomonedas.jsp");
    }
}
