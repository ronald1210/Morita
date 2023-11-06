<%-- 
    Document   : AddCli
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Cliente</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="<c:url value="recursos/css/login.css" />" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #44059E">
            <a class="navbar-brand" href="index.htm" style="font-size: 30px; font-family: cursive;"> REPOSTERIA MORITA </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">               

                    <li class="nav-item active">
                        <a  class="visible nav-link" href="index.htm"><i class="fa fa-list-alt" aria-hidden="true"></i> Tortas</a>
                    </li>

                </ul>

                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a  class="visible nav-link" href="index.htm"><i class="fa fa-reply" aria-hidden="true"></i> REGRESAR</a>
                    </li>
                </ul>

            </div>
        </nav>
        <!-------------------------------------------------------------------------------------------------------------------------->
        <div class="card-body ">
            <form action="registrarCliente.htm" method="post">
                <div class="container">
                    <label><b>DNI</b></label>
                    <input class="form-control" type="text" placeholder="Ingrese su DNI" name="DNI_CLI" required /><br>

                    <label><b>NOMBRE</b></label>
                    <input class="form-control" type="text" placeholder="Ingrese su Nombre" name="NOM_CLI" required /><br>

                    <label><b>CELULAR</b></label>
                    <input class="form-control" type="text" placeholder="Ingrese su Numero de Celular" name="FONO_CLI" required /><br>

                    <label><b>CORREO ELECTRÓNICO</b></label>
                    <input class="form-control" type="email" placeholder="Ingrese un Correo Electronico" name="CORREO_CLI" required /><br>

                    <label><b>CONTRASEÑA</b></label>
                    <input class="form-control" type="password" placeholder="Ingrese una Contraseña Segura" name="CLAVE_CLI" required /><br>

                    <label><b>DISTRITO</b></label>
                    <select name="ID_DIST"  class="form-control">
                        <c:forEach var="dist" items="${ListDist}">
                            <option value="${dist.ID_DIST}">${dist.NOM_DIST}</option>
                        </c:forEach>
                    </select><br>

                    <label><b>DIRECCIÓN</b></label>
                    <input class="form-control" type="text" placeholder="Ingrese su Dirección" name="DIREC_CLI" required /><br>

                    <button type="submit" class="btn btn-outline-success btn-lg">Registrarme</button> 

                </div>
                <a href="index.htm">Regresar</a>            
            </form>
        </div>
    </body>
</html>
