<%-- 
    Document   : ArtND
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REPOSTERIA MORITA</title>
    </head>
    <body>

        <jsp:include page="admi.jsp" />    
        
        <h1 class="text-center mt-4 estdN"><b> TORTAS NO DISPONIBLES </b></h1>

        <div class="contenedor">        
            <div class="container mt-4">
                <div class="row" >
                    <c:forEach var="art" items="${ArticulosND}">       
                        <div class="col-md-4 form-group">
                            <div class="card" >                    
                                <div class="card-header text-center">
                                    <h5> <b>${art.NOM_CAT} ${art.NOM_MARCA}</b></h5>
                                    <label>${art.MODELO_ART}</label><br>
                                    <label>Articulo </label> 
                                    <label class="estdN">${art.NOM_ESTADO}</label><br>                                                                                               
                                    <label>Quedan </label>
                                    <label class="estdN">(${art.STOCK_ART})</label>
                                </div>
                                <div class="card-body text-center">                            
                                    <img class="img1" src="<c:url value="${art.IMAGEN_ART}" />" />                      
                                </div >
                                <div class="card-footer text-center"> 
                                    <h5>S/. ${art.PRECIO_ART} </h5>
                                    <div>
                                        <a href="ActualizarD.htm?ID_ART=${art.ID_ART}" class="btn btn-outline-success"><i class="fa fa-pen"></i> Actualizar </a>
                                    </div>
                                </div>                    
                            </div> 
                        </div>
                    </c:forEach>        
                </div>
            </div>
        </div>  
    </body>
</html>

