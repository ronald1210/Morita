<%-- 
    Document   : ListStock
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Actualizar </title>        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>

        <jsp:include page="admi.jsp" /> 

        <h4><a href="ListAdmi.htm" class="regresar ml-5">Regresar</a></h4>
        
        <div class="card-body mt-4 ml-5 mr-5">
            <form method="post">
                <table class="table table-hover">
                    <thead class="text-center">
                        <tr>
                            <th>ID  </th>
                            <th>MODELO  </th>
                            <th>IMAGEN </th>
                            <th>PRECIO  </th>
                            <th>CANTIDAD  </th>
                            <th>ACCIONES  </th>
                        </tr>                            
                    </thead>

                    <tbody class="text-center">
                    <c:forEach var="stk" items="${stock}">
                        <tr>
                            <td>${stk.ID_ART}</td>
                            <td>${stk.MODELO_ART}</td>
                            <td>
                                <img class="img7" src="<c:url value="${stk.IMAGEN_ART}" />" />
                            </td>
                            <td>S./ ${stk.PRECIO_ART}</td>
                            <td>${stk.STOCK_ART}</td>
                            <td>
                                <a class="btn btn-warning" href="ListtStock.htm?ID_ART=${stk.ID_ART}"> VER </a>
                                <a class="btn btn-danger" href="borrar.htm?ID_ART=${stk.ID_ART}"> ELIMINAR </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
                </table>


                <a href="ListAdmi.htm" class="regresar">Regresar</a>


            </form>
        </div>

    </body>
</html>
