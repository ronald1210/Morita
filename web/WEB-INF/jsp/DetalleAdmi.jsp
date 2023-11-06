<%-- 
    Document   : DetalleAdmi
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalles</title>        
    </head>
    <body style="background: #DCF1E7">

        <jsp:include page="admi.jsp" />

        <div class="container mt-5">
            <c:forEach var="dp" items="${ListaDet}">                   
                <h1 class="mod text-center"><b>${dp.NOM_CAT}  ${dp.NOM_MARCA}  ${dp.MODELO_ART}</b></h1><br>
                <div class="caja">
                    <div class="izquierda ">
                        <img class="img2" src="<c:url value="${dp.IMAGEN_ART}" />" />
                    </div>
                    <div class="derecha ">
                        <h2>${dp.DESC_ART}</h2><br>
                        <h5 class="estd">Disponibles (${dp.STOCK_ART})</h5><br>
                        <label class="marca"> Marca : 
                            <h5 class="marnom"><b> ${dp.NOM_MARCA}</b></h5>
                        </label>
                        <h2>S/. ${dp.PRECIO_ART} </h2>
                        <div class="btns">
                            <a href="Actualizar.htm?ID_ART=${dp.ID_ART}" class="btn btn-outline-warning"><i class="fa fa-pen"></i> Actualizar </a>
                        </div>
                        <div>
                            <a class="regresar" href="Admin.htm">Regresar </a>
                        </div>
                    </div>
                </div>
            </c:forEach> 
        </div>

        <jsp:include page="CarruselAdmin.jsp" />            

    </body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</html>
