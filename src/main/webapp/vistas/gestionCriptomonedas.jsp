<%@page import="DAO.CriptoDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Cripto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">
    
    
    <head>
        <meta charset="UTF-8">
        <title>Gestión de Criptomonedas</title>
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
      </nav>
 </header>
    
    
    <section class="row mt-5">
        
        
    </section >
    
    
         <body>
             <main>
                 <div class="container mt-5">
                     
             <h2>Gestión de Criptomonedas</h2>
             <h4 class=" mt-4 mb-4"><a class="btn btn-warning " target="_blank" href="altaCripto.jsp" style="text-decoration: none" >Nueva Criptomoneda</a></h4>
            <table class="table table-striped table-dark">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre Criptomoneda</th>
                        <th>Ticker</th>
                        <th>Fecha Alta</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <%
                        CriptoDAO criptoDAO = new CriptoDAO();
                        List<Cripto> criptos = criptoDAO.obtenerTodas();

                        if (criptos != null && !criptos.isEmpty()) {
                            for (Cripto cripto : criptos) {
                    %>
                    <tr>
                        
                        <td><%= cripto.getIdCripto()%></td>
                        <td><%= cripto.getNombreCripto()%></td>
                        <td><%= cripto.getTicker()%></td>
                        <td><%= cripto.getFechaAlta()%></td>
                        <td>
                            <div class="d-flex">
                               
                                <!-- Formulario para actualizar -->
                                <form action="GestionCriptoServlet" method="post" class="mr-2">
                                    <input type="hidden" name="accion" value="actualizarCripto">
                                    <input type="hidden" name="id" value="<%= cripto.getIdCripto()%>">
                                    <button type="submit" class="btn btn-warning btn-block">Actualizar</button>
                                </form>

                                <!-- Formulario para eliminar -->
                                <form action="GestionCriptoServlet" method="post">
                                    <input type="hidden" name="accion" value="eliminar">
                                    <input type="hidden" name="id" value="<%= cripto.getIdCripto()%>">
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
                        <td colspan="6">Todvia no se dieron de alta Criptomonedas.</td>
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

