<%-- 
    Document   : detalleIndex
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalles</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://bootswatch.com/4/united/bootstrap.min.css">
        <link href="<c:url value="recursos/css/index.css" />" rel="stylesheet" type="text/css"/>
    </head>
    <body style="background: #7829E9">
        <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #44059E">
            <a class="navbar-brand" href="index.htm" style="font-size: 30px; font-family: cursive;"> REPOSTERIA MORITA </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">               

                    <li class="nav-item active">
                        <a  class="visible nav-link" href="index.htm"><i class="fa fa-list-alt" aria-hidden="true"></i> TORTAS</a>
                    </li>

                </ul>
              
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">                                   
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-user-circle-o" aria-hidden="true"></i> INICIAR SESION </a>                    
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown" >
                            <a  class="dropdown-item"  data-toggle="modal" href="#loginModal"><i class="fa fa-sign-in" aria-hidden="true"></i> INGRESAR </a>
                            <a class="dropdown-item" href="AddCli.htm"><i class="fa fa-user-plus" aria-hidden="true"></i> REGISTRARSE </a>
                        </div>
                    </li>
                </ul>

            </div>
        </nav>
        <!--------------------------------------LOGIN--------------------MODAL----------------------------------------------------------------->
        <div id="loginModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3><i class="fa fa-user-circle-o" aria-hidden="true"></i> Iniciar Sesión </h3>
                        <h1><i class="fa fa-times-circle-o" aria-hidden="true" data-dismiss="modal" style="color: red"></i></h1>
                    </div>
                    <div class="modal-body">
                        <form class="form" id="formLogin" method="POST" action="cliente.htm">
                            <div class="form-group">                            
                                <label><i class="fa fa-envelope" aria-hidden="true"></i> Correo Electrónico </label>                            
                                <input type="email" class="form-control form-control-lg" name="usuario" id="usu" id="txtusuario" required="">
                            </div>
                            <div class="form-group">
                                <label><i class="fa fa-lock" aria-hidden="true"></i> Contraseña </label>
                                <input type="password" class="form-control form-control-lg" name="pass" id="txtpass" required="">
                            </div>
                            <div class="form-group text-center">
                                <button type="submit" class="btn btn-outline-success btn-lg" id="btniniciar"> Ingresar <i class="fa fa-sign-in" aria-hidden="true"></i></button>
                            </div>
                            <a href="AddCli.htm" class="float-right"> Registrarme </a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!--------------------------------------LOGIN--------------------MODAL----------------------------------------------------------------->


        <div class="container mt-5">
            <c:forEach var="dp" items="${ListaDet}">                   
                <h1 class="mod text-center"><b> ${dp.MODELO_ART}</b></h1><br>
                <div class="caja">
                    <div class="izquierda ">
                        <img class="img2" src="<c:url value="${dp.IMAGEN_ART}" />" />
                    </div>
                    <div class="derecha ">
                        <h2>${dp.DESC_ART}</h2><br>
                 
                        <label class="marca"> sabor : 
                            <h5 class="marnom"><b> ${dp.NOM_MARCA}</b></h5>
                        </label>
                        <h2>S/. ${dp.PRECIO_ART} </h2>
                        <div class="btns">
                            <a class="btn btn-success" data-toggle="modal" href="#loginModal"><i class="fa fa-cart-plus"></i>  AGREGAR AL CARRITO</i></a>&nbsp;
                            <a class="btn btn-outline-danger" data-toggle="modal" href="#loginModal"><i class="fa fa-money"></i>  COMPRAR</a>
                        </div>
                        <div>
                            <a class="regresar" href="index.htm">Regresar </a>
                        </div>
                    </div>
                </div>
            </c:forEach> 
        </div>       

        <jsp:include page="CarruselIndex.jsp" />   
        
    </body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</html>
