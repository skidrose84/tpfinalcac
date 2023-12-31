<%-- 
    Document   : index
    Created on : 14 dic 2023, 09:53:22
    Author     : lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

  <script src="https://kit.fontawesome.com/fae5ac15d7.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="../styles/Style.css">

  <title>Vainilla Exchange</title>
</head>
<header>
  <nav class="navbar fixed-top navbar-expand-lg  bg-body-tertiary">
    <div class="container-fluid">
      <a class="navbar-brand" href="#home"><img src="../images/btc2.png" alt="Logo" width="30" height="24"
          class="d-inline-block align-text-top">Vainilla Exchange</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02"
        aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0 mx-auto">

          <li class="nav-item">
            <a class="nav-link" href="#home">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#staking">Staking</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#precios">Precios</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#tarjeta">Tarjeta Cripto</a>
          </li>
        </ul>
        <form class="d-flex">
          <a href="iniciarSesion.jsp" class="btn btn-warning me-2" target="_blank">Iniciar Sesion</a>
          <a href="registro.jsp" class="btn btn-warning me-2" target="_blank">Registrarme</a>
        </form>
      </div>
    </div>
  </nav>

</header>


<body>
  <main>
    <section class="row mt-5" id="home">


      <div class="container-fluid mt-5">
        <div class="row">
          <div class="col-lg-7 col-md-5 col-sm-4 mt-4 align-self-center">

            <h1 class="text-center fw-bold fs-1">El exchange Nº1 de Argentina</h1>
            <h4 class="text-center fst-italic fs-5 text-warning ">Con las comisiones mas bajas del mercado</h4>


          </div>
          <div class="col-lg-4 col-md-4 col-sm-6 ">



            <img src="../images/phone.png" class="img-fluid" alt="imagen de telefono">

          </div>

          <div class="col-4"></div>





        </div>
      </div>





    </section>
    <section class="row mx-auto justify-content-center background" id="comenzar">
      <div class=" col-lg-6 ">
        <img src="../images/comenzar.png" class="img-fluid" alt="">
      </div>


    </section>
    <section class="row mx-auto" id="staking">
      <div class="container-fluid mt-5 ">
        <h6 class="text-center fst-italic fs-5 text-warning">
          Genera ingresos pasivos
        </h6>
        <h3 class="text-center">
          Haciendo staking flexible con tus activos
        </h3>


        <div class="container mt-5 mx-auto ">
          <div class="row   ">
            <div class="col-lg-3  col-sm-3">

              <div class="card text-bg-dark mb-3 mx-auto" style="max-width: 18rem;">
                <div class="card-header">Usdt</div>
                <img src="../images/usdt.png" class="img-fluid" alt="">
                <div class="card-body">
                  <h5 class="card-title text-center">8%</h5>
                  <p class="card-text">En la moneda estable de mayor capitalizacion del mercado.</p>
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-sm-3">
              <div class="card text-bg-dark mb-3 mx-auto" style="max-width: 18rem;">
                <div class="card-header">Bitcoin</div>
                <img src="../images/btclogo2.png" class="img-fluid" alt="">
                <div class="card-body">
                  <h5 class="card-title text-center">1%</h5>
                  <p class="card-text">Te brindamos el mayor APR en la moneda de mayor capitalizacion.</p>
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-sm-3">
              <div class="card text-bg-dark mb-3 mx-auto" style="max-width: 18rem;">
                <div class="card-header">Ethereum</div>
                <img src="../images/eth.png" class="img-fluid" alt="">
                <div class="card-body">
                  <h5 class="card-title text-center">11%</h5>
                  <p class="card-text">Gran APR en ethereum la mayor promesa en el proximo ciclo alcista</p>
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-sm-3">
              <div class="card text-bg-dark mb-3 mx-auto" style="max-width: 18rem;">
                <div class="card-header">Ripple</div>
                <img src="../images/xrp-logo.png" class="img-fluid" alt="">
                <div class="card-body">
                  <h5 class="card-title text-center">2.5%</h5>
                  <p class="card-text">El futuro de la banca mundial en gran APR.</p>
                </div>
              </div>
            </div>
          </div>



        </div>

      </div>


    </section>
    <section class="row  mx-auto justify-content-center background " id="precios">
      <div class="text-center mt-5 mb-5">
        <img src="../images/topfive.png" class="img-fluid mt-5 mb-5">
      </div>
      
      
      <div class="container  mx-auto mt-5 mb-5 ">

      
        


        <div class="container text-center mt-5 mb-5">
         
             <table class="table table-striped table-dark">
              <thead>
                <tr>
                  <th scope="col">#Rank</th>
                  <th scope="col">Cripto</th>
                  <th scope="col">Precio</th>
                  <th scope="col">%24H</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">1</th>
                  <td id="btcId"></td>
                  <td id="btcPrice"></td>
                  <td id="cambioBtc"></td>
                </tr>
                <tr>
                  <th scope="row">2</th>
                  <td id="ethId"></td>
                  <td id="ethPrice"></td>
                  <td id="cabmioEth"></td>
                </tr>
                <tr>
                  <th scope="row">3</th>
                  <td id="bnbId"></td>
                  <td id="bnbPrice"></td>
                  <td id="cambioBnb"></td>
                </tr>
                <tr>
                  <th scope="row">4</th>
                  <td id="xrpId"></td>
                  <td id="xrpPrice"></td>
                  <td id="cambioXrp"></td>
                </tr>
                <tr>
                  <th scope="row">5</th>
                  <td id="solId"></td>
                  <td id="solPrice"></td>
                  <td id="cambioSol"></td>
                </tr>
              </tbody>
            </table>
            
        </div> 
      </div>
      

    </section>

    <section class="row mt-5 " id="tarjeta">
      <h6 class="text-center fst-italic fs-5 text-warning ">
        Solicita gratis tu tarjeta
      </h6>
      <h3 class="text-center">
        Y comenza a recibir cashback de hasta el 8%
      </h3>

      <div class=" row  container mx-auto justify-content-center">


        <div class="col-lg-4 ">
          <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active" data-bs-interval="10000">
                <img src="../images/Tarjeta2.png" class="d-block w-30 img-fluid" alt="...">

              </div>
              <div class="carousel-item" data-bs-interval="2000">
                <img src="../images/Tarjeta3.png" class="d-block w-30 img-fluid" alt="...">

              </div>
              <div class="carousel-item">
                <img src="../images/Tarjeta4.jpg" class="d-block w-30 img-fluid" alt="...">

              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark"
              data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Anterior</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark"
              data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Siguiente</span>
            </button>
          </div>
        </div>


      </div>

    </section>

  </main>







  <script src="../js/ticker.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
    crossorigin="anonymous"></script>
</body>

<section class="mt-5">
  <footer class="row">


    <digit brtav class="col-12 ">
      <nav class="navbar navbar-expand-lg bg-body-tertiary mt-7 " data-bs-theme="dark">
        <div class="container-fluid">



          <div class="collapse navbar-collapse" id="navbarNav">


            <div class="col">
              <p>Vainilla Exchange <span class="text-warning">2023 Copyright ®</span></p>
            </div>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="https://linkedin.com" target="_blank"><i
                    class="fa-brands fa-linkedin-in"></i></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="https://facebook.com" target="_blank"><i
                    class="fa-brands fa-facebook"></i></a>

              </li>
              <li class="nav-item">
                <a class="nav-link" href="https://twitter.com" target="_blank"><i
                    class="fa-brands fa-x-twitter"></i></a>
              </li>
              <li class="nav-item">

              </li>
              <li class="nav-item">
                <a class="nav-link" href="https://instagram.com" target="_blank"><i
                    class="fa-brands fa-instagram"></i></a>
              </li>
            </ul>






          </div>
        </div>

      </nav>

      </div>

  </footer>
</section>

</html>
