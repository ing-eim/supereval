<%-- 
    Document   : sup_eval_corp
    Created on : 9/07/2020, 11:19:24 AM
    Author     : LALO-DOCIZ
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="pbi.supeval.base.JCGlobals;"%>
<%@page import="pbi.supeval.base.JCSession;"%>

<%
    
    
    request.getSession();
    HttpSession misession= (HttpSession) request.getSession();
    if(misession.getAttribute("c_v_session").toString().length() == 0)
    {
%>
<script>
    window.location = 'lg.jsp';
</script>
<%  }else{ %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PBI</title>
        <script src="../js/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="../js/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="../js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="../js/jquery-3.5.0.min.js"></script>
        <script src="../js/Close_Ses.js"></script>
        <script src="../js/Functions_Sup_Eval.js"></script>
        
        <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="../css/pbi_styles.css">
        <link rel="stylesheet" type="text/css" href="../css/styles.css">
    </head>
    <body>
            <br/>
        <div class="title_sis">
            SUPERVISIÓN
        </div>
        <div id="panelSup">Bienvenido <br/>
            <%
                /*out.println(new JCGlobals().getNoEmp());
                out.println("  |  ");
                out.println(new JCGlobals().getNombreC());
                out.println("( <small><strong>");
                out.println(new JCGlobals().getDescPuesto());
                out.println("</strong></small> )");*/
                %>
        </div>
        <div id="reloj" class='reloj_s'>                    
        </div>
        <div id='session_progress'>            
        </div>
        <br/>
        <br/>
        <nav>
            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                <a class="nav-item nav-link active" id="nav-comision-tab" data-toggle="tab" href="#nav-comision" role="tab" aria-controls="nav-comision" aria-selected="true"> Oficios de Comisión </a>
                <% /*if (new JCGlobals().getDescPuesto().equals("DIRECTOR ADMINISTRATIVO")||new JCGlobals().getDescPuesto().equals("SUBDIRECTOR DE AREA")){*/ %>
                <a class="nav-item nav-link" id="nav-correctivos-tab" data-toggle="tab" href="#nav-correctivos" role="tab" aria-controls="nav-correctivos" aria-selected="false" onclick=""> Correctivos Disciplinarios </a>
                <%/*}*/%>
                <a class="nav-item nav-link" id="nav-quejas-tab" data-toggle="tab" href="#nav-quejas" role="tab" aria-controls="nav-quejas" aria-selected="false" onclick=""> Quejas y Denuncias </a>
                <a class="nav-item nav-link" id="nav-estimulos-tab" data-toggle="tab" href="#nav-estimulos" role="tab" aria-controls="nav-estimulos" aria-selected="false" onclick=""> Estímulos y Condecoraciones  </a>
                
                <a class="nav-item nav-link" id="nav-close-tab" onclick ="c_s();" data-toggle="tab" href="#" role="tab" aria-controls="nav-contact" aria-selected="false">Cierre Session</a>
            </div>
        </nav>
        <div class="tab-content" id="nav-tabContent">
            <div class="tab-pane fade show active" id="nav-comision" role="tabpanel" aria-labelledby="Escribir Reporte del día">
                <div class="container">
                    <h1> Cargar Oficios de Comisión </h1>
                    <form id="frmfilecomision" type="post" enctype="multipart/form-data"> 
                        <div class="form-row">
                            <div class="form-group">
                                <br/>
                                <label for="txtc_i_placa"> Placa </label>
                                <input type="text" id="txtc_i_placa" name = "txtc_i_placa" value = ""/>   
                            </div>                            
                        </div>
                        <div class="form-row">
                            <div class="form-group">
                                <br/>
                                <label for="txtnumoficio"> No. de Oficio </label>
                                <input type="text" id="txtnumoficio" name = "txtnumoficio" value = ""/>   
                            </div>                            
                        </div>
                        <div class="form-row">
                            <div class="form-group">                            
                            <input type="file" id="in_file" name="in_file" multiple accept=".pdf"/>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group">                            
                            <input type="submit" class="btn btn-info" value="Subir Archivos">
                            </div>
                        </div>
                    </form>                    
                </div>
            </div>
            <!--              PANEL CORRECTIVOS       -->
            <div class="tab-pane fade" id="nav-correctivos" role="tabpanel" aria-labelledby="Cargar Correctivos">
                <div class="container">
                    <h1> Cargar Correctivos Disciplinarios </h1>
                    <form  id="frmfilecorrectivo" type="post" enctype="multipart/form-data">
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <br/>
                                <label for="txtc_i_placabol"> Placa </label>
                                <input type="text" id="txtc_i_placabol" name = "txtc_i_placabol" value = ""/>   
                            </div>                            
                        </div>
                        <div class="row col-10">
                            <div class="form-group col-md-4">
                                <label for="txtfechaboleta">Fecha</label>
                                <input type="date" id="txtfechaboleta" name="txtfechaboleta" class="form-control">                            
                            </div>                    
                        </div>
                        <div class="form-row">
                            <div class="form-group">                            
                            <input type="file" id="in_filebol" name="in_filebol" multiple accept=".pdf"/>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group">                            
                            <input type="submit" class="btn btn-info" value="Subir Archivos">
                            </div>
                        </div>
                    </form>
                </div>                
                
            </div>
            
            <!--              PANEL QUEJAS       -->
            <div class="tab-pane fade" id="nav-quejas" role="tabpanel" aria-labelledby="Mostrar Historico de Reportes">
                <div class="container">
                    <h1> Quejas </h1>
                    <div class="row col-10">
                        <div class="form-group col-md-4">
                            <label for="txtfec_in_report">Fecha Inicial</label>
                            <input type="date" id="txtfec_in_report" class="form-control">                            
                        </div>
                        <div class="form-group col-md-4">
                            <label for="txtfec_fin_report">Fecha Final</label>
                            <input type="date" id="txtfec_fin_report" class="form-control">                            
                        </div>
                    </div>
                    <div class="row col-10">
                        <div class="form-group">                                                       
                            <input type = "button" id="btnGeneraInf" class="form-control btn btn-success" value="Mostrar" onclick =''>
                        </div>                        
                    </div>
                </div>
                <div class="container" id="reportepersonal">                    
                </div>                
            </div>            
            <!-- ****************************  -->
            <!-- PANEL GENRA REPORTE       -->
            <div class="tab-pane fade" id="nav-estimulos" role="tabpanel" aria-labelledby="Mostrar Historico de Reportes">
                <div class="container">
                    <h1> Estimulos </h1>
                    <div class="row col-10">
                        <div class="form-group col-md-4">
                            <label for="txtfec_in_report">Fecha Inicial</label>
                            <input type="date" id="txtfec_in_report" class="form-control">                            
                        </div>
                        <div class="form-group col-md-4">
                            <label for="txtfec_fin_report">Fecha Final</label>
                            <input type="date" id="txtfec_fin_report" class="form-control">                            
                        </div>
                    </div>
                    <div class="row col-10">
                        <div class="form-group">                                                       
                            <input type = "button" id="btnGeneraInf" class="form-control btn btn-success" value="Mostrar" onclick =''>
                        </div>                        
                    </div>
                </div>
                <div class="container" id="reportepersonal">                    
                </div>                
            </div>            
            <!-- ****************************  -->
        </div>
    </body>
</html>
<% }  %>