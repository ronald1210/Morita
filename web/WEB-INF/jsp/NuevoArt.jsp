
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> NUEVO </title>        
        <link href="<c:url value="recursos/css/actualizar.css" />" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>

        <jsp:include page="admi.jsp" /> 

        <div class="contenedor">
            <div class="card-header bg-info text-center mt-4">
                <h4> REGISTRAR NUEVA TORTA </h4>
            </div>
            <div class="card-body">
                <form method="post">
                    <label><b>NOMBRE DE LA TORTA : </b></label>
                    <input type="text" name="MODELO_ART" class="form-control">

                    <label><b>PRECIO :</b> </label>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon1"> S./ </span>
                        </div>
                        <input type="number" class="form-control" name="PRECIO_ART" min="0">
                    </div>

                    <label><b>CANTIDAD : </b></label>
                    <input type="number" name="STOCK_ART" class="form-control" min="0">

                    <label><b>DESCRIPCIÓN : </b></label>                        
                    <input type="text" name="DESC_ART" class="form-control" >

                    <label><b>ESTADO : </b></label> <br>
                    <input type="radio" name="ID_EST"  value="${estado[0].ID_EST}" checked=""> ${estado[0].NOM_ESTADO} <br> 
                    <input type="radio" name="ID_EST"  value="${estado[1].ID_EST}"> ${estado[1].NOM_ESTADO} <br> 
                    <br>
                    
                    <label><b>IMAGEN : </b></label><br>
                    <input type="text" name="IMAGEN_ART" class="form-control" value="recursos/images/"> <br>

                    <label><b>CATEGORIA</b></label>
                    <select name="ID_CAT"  class="form-control">                            
                        <option disabled selected value="0"> ---ELIJA UNA CATEGORIA--- </option>                            
                        <c:forEach var="cat" items="${categoria}">                                
                            <option value="${cat.ID_CAT}">${cat.NOM_CAT}</option>                                
                        </c:forEach>
                    </select>

                    <label><b>SABOR</b></label>
                    <select name="ID_MARCA"  class="form-control">
                        <option disabled selected value="0"> ---ELIJA UN SABOR--- </option>
                        <c:forEach var="mar" items="${marca}">
                            <option value="${mar.ID_MARCA}">${mar.NOM_MARCA}</option>
                        </c:forEach>
                    </select><br>
                    <div class="boton">
                    <input type="submit" value="CREAR NUEVO ARTICULO" class="btn btn-success">
                    </div>
                    <div class="regresar">
                    <a href="ListAdmi.htm" class="regresar">Regresar</a>
                    </div> 
                </form>
            </div>   
        </div>   
    </body>
</html>

