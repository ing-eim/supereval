<%-- 
    Document   : fact_cob
    Created on : 21/04/2020, 02:50:39 PM
    Author     : depdes10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="../js/jquery-3.5.0.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/jquery-3.2.1.slim.min.js"></script>        
        <script src="../js/ooper.min.js"></script>
        <script src="../js/utils.js"></script>
        <link rel="stylesheet" href="../css/bootstrap.min.css">
    </head>
    <body>
        <div>
            <br><br>
        </div>
        <div class="contrainer">
            <table class="table" id="tblfactcob">
                <thead>
                    <tr>
                        <th>Año / Mes</th>
                        <th>Facturado</th>
                        <th>Enterado</th>
                        <th>Remanente</th>
                        <th>Eficiencia</th>
                        <th><input type="button" class="btn btn-light" onclick="addrow('#tblfactcob');" value='+' title='Agregar Fila'></th>
                    </tr>                    
                </thead>
                <tbody>                    
                </tbody>
            </table>
        </div>
    </body>
</html>
