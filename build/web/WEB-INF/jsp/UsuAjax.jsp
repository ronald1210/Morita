<%-- 
    Document   : UsuAjax
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.20/datatables.min.css"/>
        
    </head>
    <body style="background: #7829E9">
        <div>
            <a href="ClienteList.htm" class="btn btn-outline-info mt-4 ml-5">
                <i class="fa fa-users"></i>  Lista de Clientes Registrados
            </a>    
            <a  class="btn btn-outline-info mt-4 ml-2"  data-toggle="modal" href="#UsuarioModal" id="abrir">
                <i class="fa fa-plus"></i> Nuevo Usuario
            </a>
        </div>

        <div id="UsuarioModal" class="modal fade" data-backdrop="static" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="card" style="background: #DCF1E7">
                        <div class="modal-header">
                            <h2 class="card-title"> USUARIO </h2>
                            <h1><i class="fa fa-times-circle-o small" data-dismiss="modal" style="color: red"></i></h1>
                        </div>
                        <div class="card-body">

                            <input type="text" id="ID_USU" class="form-control" name="ID_USU" hidden>

                            <div class="form-group">                            
                                <label> NOMBRE </label>                            
                                <input type="text" id="NOM_USU" class="form-control" name="NOM_USU" required>
                            </div>
                            <div class="form-group">
                                <label>APELLIDO </label>
                                <input type="text" id="APE_USU" class="form-control" name="APE_USU" required>
                            </div>
                            <div class="form-group">
                                <label>D.N.I </label>
                                <input type="text" id="DNI_USU" class="form-control" name="DNI_USU" required>
                            </div>
                            <div class="form-group">
                                <label> DIRECCION </label>
                                <input type="text" id="DIR_USU" class="form-control" name="DIR_USU" required>
                            </div>
                            <div class="form-group">
                                <label> CLAVE </label>
                                <input type="text" id="CLAVE_USU" class="form-control" name="CLAVE_USU" required>
                            </div>
                            <div class="form-group">
                                <label> TIPO DE USUARIO </label>
                                <select name="ID_TIP_USU"  class="form-control" id="TipUsu">
                                    <option disabled selected value="0">--TIPO DE USUARIO--</option>

                                </select>
                            </div>
                            <div class="form-group">
                                <label> DISTRITO </label>
                                <select name="ID_DIST"  class="form-control" id="dist">
                                    <option disabled selected value="0">--DISTRITO--</option>
                                </select>
                            </div>
                            <div class="text-center">
                                <button id="agregar" class="btn btn-success " data-dismiss="modal" >Agregar</button>
                            </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div>
                <h2 class="text-center">Lista de Usuarios del Sistema</h2>
                <table class="table table-hover table-info responsive text-center" id="usu">
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
                    <tbody id="tbody">

                    </tbody>
                </table>

                <h2 class="text-center mt-4">Lista de Usuarios No Disponibles</h2>
                <table class="table table-hover table-info responsive text-center" >
                    <thead class="bg-danger">
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
                    <tbody id="tbodyN">

                    </tbody>
                </table>
            </div>
        </div>        

        <script type="text/javascript" src="<c:url value="/recursos/js/jquery-3.4.1.js" />"></script>
        
        <script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.20/datatables.min.js"></script>
        
        <script type="text/javascript" src="<c:url value="/recursos/js/Usuario.js" />"></script>
    </body>
</html>
