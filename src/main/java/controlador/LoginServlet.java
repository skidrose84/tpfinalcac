package controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.ConexionDB;

//La URL en la anotación debe reflejar cómo quieres acceder al servlet desde el navegador,
//no su ubicación en la estructura de carpetas del proyecto
@WebServlet("/vistas/LoginServlet")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (autenticarUsuario(email, password)) {
            // Usuario autenticado con éxito
            
            //HttpSession session = request.getSession();
            //session.setAttribute("email", email);
            HttpSession session = request.getSession(true);
            session.setAttribute("email", email);
             
            response.sendRedirect(response.encodeRedirectURL("../vistas/menuPrincipal.jsp")); // Redirigir al menu principal
        } else {
            // Autenticación fallida
            request.setAttribute("error", "Nombre de usuario o contraseña inválidos.");
            request.getRequestDispatcher("/vistas/iniciarSesion.jsp").forward(request, response);
        }
    }

    private boolean autenticarUsuario(String email, String password) {
        // Aquí va la lógica para conectarse a la base de datos y verificar las credenciales
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        
        // cerrando los recursos manualmente
        try {
            conn = ConexionDB.conectar(); // Asume que tienes un método estático getConnection en tu clase Conexion
            String sql = "SELECT * FROM usuarios WHERE email = ? AND contraseña = ?"; // Asegúrate de que esta consulta coincida con tu esquema de base de datos
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, email);
            pstmt.setString(2, password);

            rs = pstmt.executeQuery();

            return rs.next(); // Si hay un resultado, las credenciales son correctas
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            // Cerrar recursos
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        
        // Bloque try-with-resources
        /*
        try (Connection conn = ConexionDB.conectar();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            pstmt.setString(1, username);
            pstmt.setString(2, password);

            return rs.next(); // Si hay un resultado, las credenciales son correctas
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        */
    }
}
