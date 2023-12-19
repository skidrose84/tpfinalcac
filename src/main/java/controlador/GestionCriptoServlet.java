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
import modelo.Cripto;


/**
 *
 * @author lucas
 */
@WebServlet("/vistas/GestionCriptoServlet")
public class GestionCriptoServlet extends HttpServlet {
     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accion = request.getParameter("accion");
        CriptoDAO criptoDAO = new CriptoDAO();

        // Inicializar idCripto antes del switch para que esté disponible en todos los casos
        int idCripto = Integer.parseInt(request.getParameter("id"));

        switch (accion) {
            case "actualizarCripto":
                Cripto cripto = criptoDAO.obtenerPorId(idCripto);
                request.setAttribute("cripto", cripto); //Esto permite pasar datos del servlet a una vista (como un archivo JSP) o a otro servlet al que se redirige o se reenvía la solicitud
                request.getRequestDispatcher("actualizarCripto.jsp").forward(request, response);
                break;
            case "confirmarActualizacion":
                Cripto criptoActualizada = new Cripto();
                 criptoActualizada.setIdCripto(idCripto);
                criptoActualizada.setNombreCripto(request.getParameter("nombre"));
                criptoActualizada.setTicker(request.getParameter("ticker"));
                criptoActualizada.setFechaAlta(java.sql.Date.valueOf(request.getParameter("fechaAlta")));
                

                criptoDAO.actualizarCripto(criptoActualizada);
                response.sendRedirect("gestionCriptomonedas.jsp");
                break;
            case "eliminar":
                criptoDAO.eliminarCripto(idCripto);
                response.sendRedirect("gestionCriptomonedas.jsp");
                break;
            default:
                response.sendRedirect("gestionCriptomonedas.jsp");
                break;
        }
    }
}
