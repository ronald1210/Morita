<%-- 
    Document   : admi

--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> ADMINISTRADOR </title>
        <script src="https://kit.fontawesome.com/8719a7912f.js"></script>
        <!--<link rel="stylesheet" href="https://bootswatch.com/4/united/bootstrap.min.css">   -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

        <link href="<c:url value="recursos/css/index.css" />" rel="stylesheet" type="text/css"/>
    </head>
    <body style="background: #7829E9">
        <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #44059E">
            <a class="navbar-brand" href="Admin.htm" style="font-size: 30px; font-family: cursive;"> REPOSTERIA MORITA </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">


                    <li class="dropdown active dropdown">
                        <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-list-alt"></i> Tortas 
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown" >
                            <a class="dropdown-item" href="ListAdmi.htm"><i class="fa fa-folder-open"></i> Agregados Recientemente </a>
                            <a class="dropdown-item" href="NuevoArt.htm"><i class="fa fa-plus"></i> Agregar Nuevo Articulo </a>
                            <a class="dropdown-item" href="ListStock.htm"><i class="fa fa-exclamation-circle"></i> Disponibilidad de Articulos</a>
                            <a class="dropdown-item" href="ArtND.htm"><i class="fa fa-ban"></i> Articulos No Disponibles</a>
                        </div>
                    </li>

                    <li class="nav-item active dropdown">
                        <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <i class="fa fa-users"></i> Usuarios 
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="Usuario.htm"><i class="fas fa-user-tie"></i> USUARIOS </a>
                            <a class="dropdown-item" href="ClienteList.htm"><i class="fa fa-users"></i> CLIENTES </a>
                        </div>
                    </li>        

                    <li class="nav-item active">
                        <a class="nav-link" href="Marca.htm"><i class="fa fa-truck"></i> Distribuidores </a>
                    </li>                    

                    <li class="nav-item active">
                        <a class="nav-link"  href="reportes.htm" tabindex="-1" aria-disabled="true">
                            <i class="fas fa-clipboard"></i> Reportes </a>
                    </li>

                </ul>
                <ul class="navbar-nav">
                    <li class="nav-item dropdown active">                                   
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            BIENVENIDO:&nbsp ${usuario[0].NOM_TIP_USU} ${usuario[0].NOM_USU} &nbsp <i class="fa fa-address-card"></i></a>                    
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown" >
                            <a  class="dropdown-item"><i class="fa fa-pen"></i> CUENTA </a>
                            <a class="dropdown-item" href="salir.htm"><i class="fa fa-sign-out-alt"></i> SALIR </a>
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
