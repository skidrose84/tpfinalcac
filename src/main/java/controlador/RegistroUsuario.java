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
import java.sql.Date;
import modelo.Usuario;

/**
 *
 * @author lucas
 */

@WebServlet("/vistas/RegistroUsuario")
public class RegistroUsuario extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtener datos del formulario
        String nombre = request.getParameter("nombre");
        String email = request.getParameter("email");
        String contraseña = request.getParameter("password");
        
     
        

        // Crear un objeto Usuario con los datos
        Usuario usuario = new Usuario();
        usuario.setNombre(nombre);
        usuario.setEmail(email);
        usuario.setContraseña(contraseña);

        // Obtener la fecha actual
        java.util.Date fechaActual = new java.util.Date(); //es una forma de utilizar la clase sin necesitar una declaracion 'import'
        usuario.setFechaAlta(new Date(fechaActual.getTime()));

        // Agregar el usuario a la base de datos
        UsuariosDAO usuariosDAO = new UsuariosDAO();
        usuariosDAO.agregarUsuario(usuario);

        // Redireccionar a la página de iniciar sesion
        response.sendRedirect(request.getContextPath() + "/vistas/iniciarSesion.jsp");
    }
}
