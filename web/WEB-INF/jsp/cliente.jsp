<%-- 
    Document   : cliente1

--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REPOSTERIA MORITA</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://bootswatch.com/4/united/bootstrap.min.css">    
        <link href="<c:url value="recursos/css/index.css" />" rel="stylesheet" type="text/css"/>
    </head>
    <body style="background: #7829E9">
        <nav class="navbar navbar-expand-lg navbar-dar" style="background-color: #44059E">
            <a class="navbar-brand" href="clientee.htm" style="font-size: 30px; font-family: cursive;"> REPOSTERIA MORITA </a>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="clientee.htm"><i class="fa fa-home"></i> Inicio </a>
                    </li>

                    <li class="nav-item active">
                        <a  class="visible nav-link" href="clientee.htm"><i class="fa fa-list-alt"></i> Tortas</a>
                    </li>

                    <li class="nav-item active">
                        <a class="nav-link"  href="" tabindex="-1" aria-disabled="true">
                            <i class="fa fa-shopping-cart"></i>(<label style="color: darkorange"></label>) Carrito</a>
                    </li>
                </ul>

                <form class="form-inline my-2 my-lg-0" action="buscarC.htm">
                    <select name="txtBuscar"  class="form-control mr-sm-2">
                        <option disabled selected value="0">---CATEGORIA---</option>
                        <c:forEach var="mar" items="${LC}">
                            <option value="${mar.ID_CAT}">${mar.NOM_CAT}</option>
                        </c:forEach>
                    </select>
                    <button class="btn btn-danger" type="submit"><i class="fa fa-search"></i> BUSCAR </button>
                </form>

                <ul class="navbar-nav">
                    <li class="nav-item dropdown">                                   
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            BIENVENIDO ${usuario[0].NOM_CLI} &nbsp <i class="fa fa-user-circle-o"></i></a>                    
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown" >
                            <a  class="dropdown-item" href="#"><i class="fa fa-pencil-square-o"></i> CUENTA </a>
                            <a class="dropdown-item" href="index.htm"><i class="fa fa-sign-out"></i> SALIR </a>
                        </div>
                    </li>
                </ul>

            </div>
        </nav>

    </body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</html>

