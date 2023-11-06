<%-- 
    Document   : Cliente1
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Actualizar </title>        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="<c:url value="/recursos/css/ListUsu.css" />" rel="stylesheet" type="text/css"/>
        
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.20/datatables.min.css"/>

        
    </head>
    <body>
        
        <jsp:include page="admi.jsp" /> 
        
        <div>
            <a href="Usuario.htm" class="btn btn-outline-info mt-4 ml-5">
                <i class="fa fa-user-tie"></i> Lista de Usuarios del Sistema 
            </a>                           
        </div>
        
        <div class="container">
            <div>
                <h2 class="text-center">Lista de Clientes Registrados</h2>
                <table class="table table-hover table-info text-center" id="usu">
                    <thead class="bg-danger">
                        <tr>
                            <th>ID  </th>
                            <th>NOMBRE  </th>
                            <th>D.N.I </th>                            
                            <th>CELULAR  </th>                            
                            <th>CORREO  </th>
                            <th>DIRECCIÓN </th>
                            <th>DISTRITO </th>
                        </tr>                            
                    </thead>

                    <tbody>
                        <c:forEach var="usu" items="${ListaC}">
                            <tr>
                                <td>${usu.ID_CLI}</td>
                                <td>${usu.NOM_CLI}</td>
                                <td>${usu.DNI_CLI}</td>
                                <td>${usu.FONO_CLI}</td>
                                <td>${usu.CORREO_CLI}</td>
                                <td>${usu.DIREC_CLI}</td>                                
                                <td>${usu.NOM_DIST}</td>
                            </tr>
                        </c:forEach>
                    </tbody>                
                </table>
            </div>
        </div>
        
        
        
        <script type="text/javascript" src="<c:url value="/recursos/js/jquery-3.4.1.js" />"></script>
        
        <script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.20/datatables.min.js"></script>
        
        <script type="text/javascript" src="<c:url value="/recursos/js/Cliente.js" />"></script>
    </body>
</html>
