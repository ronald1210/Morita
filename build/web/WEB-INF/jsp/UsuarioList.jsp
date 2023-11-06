<%-- 
    Document   : Usuarios
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Actualizar </title>        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <!--
        <link href="<c:url value="/recursos/css/ListUsu.css" />" rel="stylesheet" type="text/css"/>
        -->
    </head>
    <body style="background: #7829E9"> 
        <jsp:include page="admi.jsp" /> 

        <div>
            <a href="ClienteList.htm" class="btn btn-outline-info mt-4 ml-5">
                <i class="fa fa-users"></i>  Lista de Clientes Registrados
            </a>    
            <a  class="btn btn-outline-info mt-4 ml-2"  data-toggle="modal" href="#UsuarioModal">
                <i class="fa fa-plus"></i> Nuevo Usuario
            </a>
        </div>

        <!-------------------NUEVO-----------------USUARIO----------------------MODAL---------------------------------------------->        
        <div id="UsuarioModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h2><i class="fa fa-user-plus"></i> NUEVO USUARIO </h2>
                        <h1><i class="fa fa-times-circle-o small" data-dismiss="modal" style="color: red"></i></h1>
                    </div>
                    <div class="modal-body">
                        <form class="form" id="formLogin" method="POST" action="registrarUsuario.htm">
                            <div class="form-group">                            
                                <label><i class="fa fa-envelope"></i> NOMBRE </label>                            
                                <input type="text" class="form-control" name="NOM_USU" required>
                            </div>
                            <div class="form-group">
                                <label><i class="fa fa-lock"></i> APELLIDO </label>
                                <input type="text" class="form-control " name="APE_USU" required>
                            </div>
                            <div class="form-group">
                                <label><i class="fa fa-lock"></i> D.N.I </label>
                                <input type="text" class="form-control " name="DNI_USU" required>
                            </div>
                            <div class="form-group">
                                <label><i class="fa fa-lock"></i> DIRECCION </label>
                                <input type="text" class="form-control" name="DIR_USU" required>
                            </div>
                            <div class="form-group">
                                <label><i class="fa fa-lock"></i> CLAVE </label>
                                <input type="password" class="form-control" name="CLAVE_USU" required>
                            </div>
                            <div class="form-group">
                                <label><i class="fa fa-lock"></i> TIPO DE USUARIO </label>
                                <select name="ID_TIP_USU"  class="form-control">
                                    <c:forEach var="tip" items="${TipoUsu}">
                                        <option value="${tip.ID_TIP_USU}">${tip.NOM_TIP_USU}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label><i class="fa fa-lock"></i> DISTRITO </label>
                                <select name="ID_DIST"  class="form-control">
                                    <c:forEach var="dist" items="${ListDist}">
                                        <option value="${dist.ID_DIST}">${dist.NOM_DIST}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group text-center">
                                <button type="submit" class="btn btn-outline-success">
                                    REGISTRAR <i class="fa fa-sign-in"></i>
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!------FALTA-------------ACTUALIZAR-----------------USUARIO----------------------MODAL---------------------------------------------->
        <div id="ActualizarUsuario" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2><i class="fa fa-user-plus"></i> Actualizar </h2>
                            <h1><i class="fa fa-times-circle-o small" data-dismiss="modal" style="color: red"></i></h1>
                        </div>
                        <div class="modal-body">
                            <form class="form" id="formLogin" method="POST" action="ActualizasrUsuario.htm">
                                <div class="form-group">                            
                                    <label><i class="fa fa-envelope"></i> NOMBRE </label>                            
                                    <input type="text" class="form-control" name="NOM_USU" value="${ListaEdt.NOM_USU}">
                                </div>
                                <div class="form-group">
                                    <label><i class="fa fa-lock"></i> APELLIDO </label>
                                    <input type="text" class="form-control " name="APE_USU" required value="${Ad.APE_USU[0]}">
                                </div>
                                <div class="form-group">
                                    <label><i class="fa fa-lock"></i> D.N.I </label>
                                    <input type="text" class="form-control " name="DNI_USU" required>
                                </div>
                                <div class="form-group">
                                    <label><i class="fa fa-lock"></i> DIRECCION </label>
                                    <input type="text" class="form-control" name="DIR_USU" required>
                                </div>
                                <div class="form-group">
                                    <label><i class="fa fa-lock"></i> CLAVE </label>
                                    <input type="password" class="form-control" name="CLAVE_USU" required>
                                </div>
                                <div class="form-group">
                                    <label><i class="fa fa-lock"></i> TIPO DE USUARIO </label>
                                    <select name="ID_TIP_USU"  class="form-control">
                                        <c:forEach var="tip" items="${TipoUsu}">
                                            <option value="${tip.ID_TIP_USU}">${tip.NOM_TIP_USU}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label><i class="fa fa-lock"></i> DISTRITO </label>
                                    <select name="ID_DIST"  class="form-control">
                                        <c:forEach var="dist" items="${ListDist}">
                                            <option value="${dist.ID_DIST}">${dist.NOM_DIST}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group text-center">
                                    <button type="submit" class="btn btn-outline-success">
                                        REGISTRAR <i class="fa fa-sign-in"></i>
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
        </div>
        <!-------------------ACTUALIZAR-----------------USUARIO----------------------MODAL---------------------------------------------->

        <div class="container">
            <div>
                <h2 class="text-center">Lista de Usuarios del Sistema</h2>
                <table class="table table-hover responsive mt-4 col-12 text-center">
                    <thead class="bg-warning">
                        <tr>
                            <th>ID</th>
                            <th>NOMBRE  </th>
                            <th>APELLIDO  </th>
                            <th>D.N.I </th>                            
                            <th>DIRECCION  </th>                            
                            <th>DISTRITO  </th>
                            <th>TIPO DE USUARIO </th>
                            <th>ESTADO </th>
                            <th>ACCIONES </th>
                        </tr>                            
                    </thead>

                    <tbody class="bg-light">
                        <c:forEach var="cli" items="${ListaU}">
                            <tr>
                                <td>${cli.ID_USU}</td>
                                <td>${cli.NOM_USU}</td>
                                <td>${cli.APE_USU}</td>
                                <td>${cli.DNI_USU}</td>
                                <td>${cli.DIR_USU}</td>
                                <td>${cli.NOM_DIST}</td>
                                <td>${cli.NOM_TIP_USU}</td>                                
                                <td>${cli.NOM_ESTADO}</td>
                                <td>
                                    <a id="actualizar" href="ActualizarUsuario.htm?ID_USU=${cli.ID_USU}"class="btn btn-warning" data-toggle="modal" data-target="#ActualizarUsuario" >
                                        <i class="fa fa-pencil-square-o " style="margin-right: 0"></i>
                                    </a>
                                    <a id="eliminar" class="btn btn-danger" href="Inactivo.htm?ID_USU=${cli.ID_USU}" >
                                        <i class="fa fa-trash-o" style="margin-right: 0" ></i>
                                    </a>
                                    <a id="activo" class="btn btn-success" href="Activo.htm?ID_USU=${cli.ID_USU}">  
                                        <i class="fa fa-refresh" style="margin-right: 0"></i>
                                    </a>  
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody> 
                    
                </table>
            </div>
        </div>
        
        
    </body>
</html>
