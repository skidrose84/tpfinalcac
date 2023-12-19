<%-- 
    Document   : menuPrincipal
    Created on : 17 dic 2023, 18:57:18
    Author     : lucas
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

    //HttpSession session = request.getSession(false);
    String email= (String) session.getAttribute("email");
    

%>

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
  <nav class="navbar fixed-top navbar-expand-lg  bg-body-tertiary">
    <div class="container-fluid">
      <a class="navbar-brand" href=""><img src="../images/btc2.png" alt="Logo" width="30" height="24"
          class="d-inline-block align-text-top">Vainilla Exchange</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02"
        aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0 mx-auto">

          <li class="nav-item">
            <a class="nav-link" href="gestionUsuarios.jsp">Adminisrtar Usuarios</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="gestionCriptomonedas.jsp">Administrar Criptomonedas</a>
          </li>
          
        </ul>
        <form class="d-flex">
            <p class="me-4 " style="color :whitesmoke ">Hola  <%out.println(email);%> </p>
            <a class="nav-link me-4" href="index.jsp" >Cerrar Sesion <% session.invalidate();%> </a>
        </form>
      </div>
    </div>
  </nav>
     
     

</header>
           
            <main>
                <body>
                    
                </body>
            </main>
    
  
  
   
</html>
