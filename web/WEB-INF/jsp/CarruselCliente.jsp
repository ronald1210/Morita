<%-- 
    Document   : CarruselCliente
 
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src = "https://code.jquery.com/jquery-1.12.4.min.js"></script>
        <script src = "https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <link href = "https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.css" rel = "stylesheet" />
        <link href="recursos/css/carrusel.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container-fluid">
            <div class="container-fluid">
                <h1 class="text-center mb-3 mt-5">torta Parecidos</h1>
                <div id="myCarousel" class="carousel slide w-75 mx-auto" data-ride="carousel">
                    <div class="carousel-inner row w-50 mx-auto">
                        <div class="carousel-item col active " hidden>
                            <c:forEach var="art" items="${ListaDet}">
                                <div class="card">
                                    <div class="card-header text-center">
                                        <h5> <b>TORTAS MORITA</b></h5>
                                        <label>${art.MODELO_ART}</label><br>
                                        <label>torta </label> 
                                        <label class="estd">${art.NOM_ESTADO}</label><br>                                                                                               
                                        <label>Quedan </label>
                                        <label class="estd">(${art.STOCK_ART})</label>
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
                            </c:forEach>
                        </div>
                        <c:forEach var="art" items="${ListaC}">
                            <div class="carousel-item ">

                                <div class="card">
                                    <div class="card-header text-center">
                                        <h5> <b>${art.NOM_CAT} ${art.NOM_MARCA}</b></h5>
                                        <label>${art.MODELO_ART}</label><br>
                                        <label>torta </label> 
                                        <label class="estd">${art.NOM_ESTADO}</label><br>                                                                                               
                                        <label>Quedan </label>
                                        <label class="estd">(${art.STOCK_ART})</label>
                                    </div>
                                    <div class="card-body text-center">                            
                                        <img class="img4" src="<c:url value="${art.IMAGEN_ART}" />" />                      
                                    </div >
                                    <div class="card-footer text-center"> 
                                        <h5>S/. ${art.PRECIO_ART} </h5>
                                        <div>
                                            <a href="detalleC.htm?ID_ART=${art.ID_ART}&ID_CAT=${art.ID_CAT}" class="btn btn-outline-info">
                                                <i class="fa fa-info-circle"></i>  VER DETALLES
                                            </a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </c:forEach>
                        
                    </div>
                    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon bg-dark" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                        <span class="carousel-control-next-icon bg-dark" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>                     
        </div> 

    </body>
    <script src="recursos/js/carrusel.js" type="text/javascript"></script>
</html>
