<%@page import="modelo.Cripto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html html lang="en" data-bs-theme="dark">
    <head>
        <meta charset="UTF-8">
        <title>Actualizar Criptomonedas</title>
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
        <body>
        <div class="container-fluid col-sm-3 col-md-4 mt-5">
            <h2>Actualizar Criptomonedas</h2>
            <form action="GestionCriptoServlet" method="post">
                <input type="hidden" name="accion" value="confirmarActualizacion">
                <input type="hidden" name="id" value="${cripto.idCripto}">

                <div class="form-group">
                    <label for="nombre">Nombre:</label>
                    <input type="text" class="form-control" id="nombre" name="nombre" value="${cripto.nombreCripto}" required>
                </div>

                <div class="form-group">
                    <label for="ticker">Ticker:</label>
                    <input type="text" class="form-control" id="ticker" name="ticker" value="${cripto.ticker}" required>
                </div>

               

                <div class="form-group">
                    <label for="fechaAlta">Fecha Alta:</label>
                    <input type="date" class="form-control" id="fechaAlta" name="fechaAlta" value="${cripto.fechaAlta}" required>
                </div>

                <button type="submit" class="btn btn-primary">Actualizar</button>
                <a href="gestionCriptomonedas.jsp" class="btn btn-success">Volver</a>

            </form>
        </div>
    </body>
    </section>
    
</html>

