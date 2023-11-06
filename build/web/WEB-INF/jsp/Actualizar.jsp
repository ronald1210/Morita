<%-- 
    Document   : Actualizar
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Actualizar </title> 
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">       
        <link href="<c:url value="recursos/css/actualizar.css" />" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <jsp:include page="admi.jsp" /> 
        
        <div class="contenedor">
            <c:forEach var="Ad" items="${ListaEdt}">
            <div class="card-header bg-info text-center mt-4">
                <h4> ACTUALIZAR </h4>
                <input type="hidden" name="ID_ART" value="${Ad.ID_ART}" ></input>
            </div>
            
                <div class="card-body">
                    <form method="post">
                        <label><b>NOMBRE DEL MODELO : </b></label>
                        <input type="text" name="MODELO_ART" class="form-control" value="${Ad.MODELO_ART}">

                        <label><b>PRECIO :</b> </label>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1"> S./ </span>
                            </div>
                            <input type="number" class="form-control" name="PRECIO_ART" value="${Ad.PRECIO_ART}" min="0">
                        </div>

                        <label><b>CANTIDAD : </b></label>
                        <input type="number" name="STOCK_ART" class="form-control" value="${Ad.STOCK_ART}" min="0">

                        <label><b>DESCRIPCIÓN : </b></label>                        
                        <input type="text" name="DESC_ART" class="form-control" value="${Ad.DESC_ART}" >
                        
                        <label><b>ESTADO : </b></label> <br>
                        <input type="radio" name="ID_EST"  value="${Ad.ID_EST}" checked="" > <b>${Ad.NOM_ESTADO}</b> <br> 
                             
                        <label><b>IMAGEN : </b></label><br>
                        <p>
                        <img class="img3" src="<c:url value="${Ad.IMAGEN_ART}" />" />
                        </p>
                        <input type="text" name="IMAGEN_ART" class="form-control" value="${Ad.IMAGEN_ART}">

                        <label><b>CATEGORIA</b></label>
                        <select name="ID_CAT"  class="form-control">                            
                            <option value="${Ad.ID_CAT}" selected>${Ad.NOM_CAT}</option>                            
                            <c:forEach var="cat" items="${categoria}">                                
                                <option value="${cat.ID_CAT}">${cat.NOM_CAT}</option>                                
                            </c:forEach>
                        </select>

                        <label><b>MARCA</b></label>
                        <select name="ID_MARCA"  class="form-control">
                            <option value="${Ad.ID_MARCA}" selected>${Ad.NOM_MARCA}</option>
                            <c:forEach var="mar" items="${marca}">
                                <option value="${mar.ID_MARCA}">${mar.NOM_MARCA}</option>
                            </c:forEach>
                        </select><br>
                        <div class="boton">
                        <input type="submit" value="ACTUALIZAR" class="btn btn-success">
                        </div>
                        <div class="regresar">
                        <a href="ListAdmi.htm" class="regresar">Regresar</a>
                        </div>      

                    </form>
                </div>
            </c:forEach>       
        </div>   
    </body>
</html>
