



<%@page import="DAO.UsuariosDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%


  String email= (String)session.getAttribute("email");
%>

<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">
    
    
    <head>
        <meta charset="UTF-8">
        <title>Gestión de Usuarios</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

  <script src="https://kit.fontawesome.com/fae5ac15d7.js" crossorigin="anonymous"></script>
    </head>
    
 <header>
    <nav class="navbar fixed-top navbar-expand-lg bg-body-tertiary">
        <nav class="navbar bg-body-tertiary">
            <div class="container-fluid">
              <a class="navbar-brand" href="c://Cursos/Codo a codo/FrontendIntegrador/index.html">
                <img src="../images/btc2.png" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
                Vainilla exchange
              </a>
            </div>
          </nav>
        <form class="d-flex">
            <p class="me-4 " style="color :whitesmoke ">Hola  <%out.println(email);%> </p>
            <a class="nav-link me-4" href="index.jsp" >Cerrar Sesion <%session.invalidate();%></a>
        </form>
        
      </nav>
 </header>
    
    
    <section class="row mt-5">
        
        
    </section >
    
    
         <body>
             <main>
                 <div class="container mt-5">
            <h2>Gestión de Usuarios</h2>
            <table class="table table-striped table-dark">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Email</th>
                        <th>Contraseña</th>
                        <th>Fecha Alta</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <%
                        UsuariosDAO usuariosDAO = new UsuariosDAO();
                        List<Usuario> usuarios = usuariosDAO.obtenerTodos();

                        if (usuarios != null && !usuarios.isEmpty()) {
                            for (Usuario usuario : usuarios) {
                    %>
                    <tr>
                        
                        <td><%= usuario.getIdUsuario()%></td>
                        <td><%= usuario.getNombre()%></td>
                        <td><%= usuario.getEmail()%></td>
                        <td><%= usuario.getContraseña()%></td>
                        <td><%= usuario.getFechaAlta()%></td>
                        <td>
                            <div class="d-flex">
                                <!-- Formulario para actualizar -->
                                <form action="GestionUsuarioServlet" method="post" class="mr-2">
                                    <input type="hidden" name="accion" value="actualizar">
                                    <input type="hidden" name="id" value="<%= usuario.getIdUsuario()%>">
                                    <button type="submit" class="btn btn-warning btn-block">Actualizar</button>
                                </form>

                                <!-- Formulario para eliminar -->
                                <form action="GestionUsuarioServlet" method="post">
                                    <input type="hidden" name="accion" value="eliminar">
                                    <input type="hidden" name="id" value="<%= usuario.getIdUsuario()%>">
                                    <button type="submit" class="btn btn-danger btn-block">Eliminar</button>
                                </form>
                            </div>
                        </td>
                    </tr>
                    <%
                        }
                    } else {
                    %>
                    <tr>
                        <td colspan="6">No hay Usuarios registrados.</td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <a href="../vistas/menuPrincipal.jsp" class="btn btn-success">Volver</a>   
        </div>
                 
             </main>
        
    </body>
        
  
   
</html>

