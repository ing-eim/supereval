<%-- 
    Document   : principal
    Created on : 21/04/2020, 01:50:06 PM
    Author     : depdes10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>        
    </head>
    <body>
        <div class='container'>
            <div class="titleapp">
                Sistema de Evaluación Corporativa PBI
            </div>            
        </div>
        <div class="container">
         <!--Navbar-->
<nav class="navbar navbar-expand-lg navbar-dark bg-info">

  <!-- Navbar brand -->
  <a class="navbar-brand" href="#">Navbar</a>

  <!-- Collapse button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav"
    aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <!-- Collapsible content -->
  <div class="collapse navbar-collapse" id="basicExampleNav">

    <!-- Links -->
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
          <a class="nav-link" href="./view/fact_cob.jsp" target="fcontent">Facturación y Cobranza
          <span class="sr-only">(current)</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Features</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Pricing</a>
      </li>

      <!-- Dropdown -->
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown"
          aria-haspopup="true" aria-expanded="false">Indicadores</a>
        <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="./view/rp_plazas.jsp" target="fcontent">Plazas</a>
          <a class="dropdown-item" href="./view/rp_activos.jsp" target="fcontent">Activos</a>
          <a class="dropdown-item" href="./view/rp_fact_cobranza.jsp" target="fcontent">Facturacion y Cobranza</a>
        </div>
      </li>
    </ul>
    <!-- Links -->
    <form class="form-inline">
      <div class="md-form my-0">
        <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
      </div>
    </form>
  </div>
  <!-- Collapsible content -->

</nav>
<!--/.Navbar-->
        </div>
        <div class="container">
            <iframe name="fcontent" width="100%" height="800px" frameborder="0"></iframe>           
        </div>
    </body>
</html>
