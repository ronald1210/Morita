<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REPOSTERIA MORITA</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://bootswatch.com/4/united/bootstrap.min.css">    
        <link href="<c:url value="recursos/css/index.css" />" rel="stylesheet" type="text/css"/>
    </head>
    <body style="background: #7829E9">  
    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #44059E" >
        <a class="navbar-brand" href="index.htm" style="font-size: 30px; font-family: cursive;">REPOSTERIA MORITA</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">               

                <li class="nav-item active">
                    <a  class="visible nav-link" href="index.htm"><i class="fa fa-list-alt"></i> TORTAS</a>
                </li>

            </ul>

            <form class="form-inline my-2 my-lg-0" action="buscar.htm">
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
                        <i class="fa fa-user-circle-o"></i> INICIAR SESION </a>                    
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown" >
                        <a  class="dropdown-item"  data-toggle="modal" href="#loginModal"><i class="fa fa-sign-in"></i> INGRESAR </a>
                        <a class="dropdown-item" href="AddCli.htm"><i class="fa fa-user-plus"></i> REGISTRARME </a>
                    </div>
                </li>
            </ul>

        </div>
    </nav>
    <!--------------------------------------LOGIN--------------------MODAL----------------------------------------------------------------->
    <div id="loginModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h3><i class="fa fa-user-circle-o"></i> Iniciar Sesión </h3>
                    <h1><i class="fa fa-times-circle-o" data-dismiss="modal" style="color: red"></i></h1>
                </div>
                <div class="modal-body">
                    <form class="form" id="formLogin" method="POST" action="cliente.htm">
                        <p><a  data-toggle="modal" href="#loginModal2" class="float-right" data-dismiss="modal"> administrador? </a></p>
                        <div class="form-group">                            
                            <label><i class="fa fa-envelope"></i> Correo Electrónico </label>                            
                            <input type="email" class="form-control form-control-lg" name="usuario" id="usu" id="txtusuario" required="">
                        </div>
                        <div class="form-group">
                            <label><i class="fa fa-lock"></i> Contraseña </label>
                            <input type="password" class="form-control form-control-lg" name="pass" id="txtpass" required="">
                        </div>
                        <div class="form-group text-center">
                            <button type="submit" class="btn btn-outline-success btn-lg" id="btniniciar"> Ingresar <i class="fa fa-sign-in"></i></button>
                        </div>
                        <a href="AddCli.htm" class="float-right"> Registrarme </a>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!--------------------------------------LOGIN--------------------MODAL----------------------------------------------------------------->

    <div id="loginModal2" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header" style="background: gray;">
                    <h3  style="color: white"><i class="fa fa-user-circle-o"></i> Iniciar Sesión </h3>
                    <h1><i class="fa fa-times-circle-o" aria-hidden="true" data-dismiss="modal" style="color: red"></i></h1>
                </div>
                <div class="modal-body" style="background: lightgray;">
                    <form class="form" id="formLogin" method="POST" action="admi.htm">
                        <div class="form-group">                            
                            <label><i class="fa fa-id-card"></i> D.N.I. </label>                            
                            <input type="text" class="form-control form-control-lg" name="usuarioA" id="usu" id="txtusuario" required="">
                        </div>
                        <div class="form-group">
                            <label><i class="fa fa-lock"></i> Contraseña </label>
                            <input type="password" class="form-control form-control-lg" name="passA" id="txtpass" required="">
                        </div>
                        <div class="form-group text-center">
                            <button type="submit" class="btn btn-outline-success btn-lg" id="btniniciar"> Ingresar <i class="fa fa-sign-in"></i></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--------------------------------------LOGIN--------------------MODAL----------------------------------------------------------------->

    <div class="contenedor">        
        <div class="container mt-4">
            <div class="row" >
                <c:forEach var="art" items="${Lista}">       
                    <div class="col-md-4 form-group">
                        <div class="card" >                    
                            <div class="card-header text-center">
                                <h5> <b>TORTAS MORITA</b></h5>
                                <label>${art.MODELO_ART}</label><br>
                                <label>torta: </label> 
                                <label class="estd">${art.NOM_ESTADO}</label><br>                                                                                               
                              
                            </div>
                            <div class="card-body text-center">                            
                                <img class="img1" src="<c:url value="${art.IMAGEN_ART}" />" />                      
                            </div >
                            <div class="card-footer text-center"> 
                                <h5>S/. ${art.PRECIO_ART} </h5>
                                <div>
                                    <a href="detalleI.htm?ID_ART=${art.ID_ART}&ID_CAT=${art.ID_CAT}" class="btn btn-outline-info">
                                        <i class="fa fa-info-circle"></i>  VER DETALLES
                                    </a>
                                </div>
                            </div>                    
                        </div> 
                    </div>
                </c:forEach>        
            </div>
        </div>
    </div> 

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>
