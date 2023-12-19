/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import DAO.UsuariosDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import modelo.Usuario;

/**
 *
 * @author lucas
 */

@WebServlet("/vistas/GestionUsuarioServlet")
public class GestionUsuarioServlet extends HttpServlet {
     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accion = request.getParameter("accion");
        UsuariosDAO usuariosDAO = new UsuariosDAO();

        // Inicializar idOrador antes del switch para que esté disponible en todos los casos
        int idUsuario = Integer.parseInt(request.getParameter("id"));

        switch (accion) {
            case "actualizar":
                Usuario usuario = usuariosDAO.obtenerPorId(idUsuario);
                request.setAttribute("usuario", usuario); //Esto permite pasar datos del servlet a una vista (como un archivo JSP) o a otro servlet al que se redirige o se reenvía la solicitud
                request.getRequestDispatcher("actualizar.jsp").forward(request, response);
                break;
            case "confirmarActualizacion":
                Usuario usuarioActualizado = new Usuario();
                usuarioActualizado.setIdUsuario(idUsuario);
                usuarioActualizado.setNombre(request.getParameter("nombre"));
                usuarioActualizado.setEmail(request.getParameter("email"));
                usuarioActualizado.setContraseña(request.getParameter("contraseña"));
                // Asume que el método setFechaAlta acepta un java.sql.Date
                usuarioActualizado.setFechaAlta(java.sql.Date.valueOf(request.getParameter("fechaAlta")));

                usuariosDAO.actualizarUsuario(usuarioActualizado);
                response.sendRedirect("gestionUsuarios.jsp");
                break;
            case "eliminar":
                usuariosDAO.eliminarUsuario(idUsuario);
                response.sendRedirect("gestionUsuarios.jsp");
                break;
            default:
                response.sendRedirect("gestionUsuarios.jsp");
                break;
        }
    }
}
