<%-- 
    Document   : UsuarioListAjax
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.20/datatables.min.css"/>

    </head>
    <body>
        <div class="form-group mt-4 ml-5">
            <button class="btn btn-outline-info" data-toggle="modal" data-target="#ajax" id="abrir"><i class="fa fa-plus-square"></i>Agregar</button>
        </div>

        <div class="modal fade" id="ajax" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog " role="document">
                <div class="modal-content">
                    <div class="card alert-success text-center">
                        <div class="modal-header">
                            <h2 class="card-title">Sabor</h2>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="card-body">
                            <div class="form-group text-center">
                                <input type="text" id="ID_MARCA" class="form-group form-control"  name="ID_MARCA" hidden />
                                <div class="form-group">                            
                                    <label> NOMBRE </label>                            
                                    <input type="text" id="NOM_MARCA" class="form-group form-control"  name="NOM_MARCA" required>
                                </div>
                                
                            </div>
                            <button id="agregar" class="btn btn-success " data-dismiss="modal" >Agregar</button>                            
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <h2 class="text-center">Lista de SABORES</h2>
            <table class="table table-info table-hover text-center" id="usu">
                <thead class="bg-success">
                    <tr>
                        <th>ID</th>
                        <th>NOMBRE</th>
                        <th>ACCIONES</th>
                    </tr>
                </thead>
                <tbody id="tbody">

                </tbody>

            </table>
            
            <h2 class="text-center mt-4">Lista de Sabores No Disponibles</h2>
            <table class="table table-info table-hover text-center">
                <thead class="bg-danger">
                    <tr>
                        <th>ID</th>
                        <th>NOMBRE</th>
                        <th>ACCIONES</th>
                    </tr>
                </thead>                
                <tbody id="tbodyN">

                </tbody>                
            </table>
        </div>      
        <script type="text/javascript" src="<c:url value="/recursos/js/jquery-3.4.1.js" />"></script>
        
        <script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.20/datatables.min.js"></script>
        
        <script type="text/javascript" src="<c:url value="/recursos/js/Metodos.js" />"></script>
    </body>  
</html>
