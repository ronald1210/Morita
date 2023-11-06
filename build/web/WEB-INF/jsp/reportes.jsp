<%-- 
    Document   : reportes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REPOSTERIA MORITA</title>
        <script src="https://kit.fontawesome.com/8719a7912f.js"></script>
    </head>
    <body style="background: #7829E9">
        <jsp:include page="admi.jsp" />  

        <main>
            <div class="cards container mt-5 text-center">
                <div class="row d-flex my-4">
                    <div class="card p-0 bg-primary border border-warning col-md-5 mx-auto">
                        <div class="card-body d-flex justify-content-around text-light">
                            <div>
                                <i class="fas fa-clipboard" style="font-size: 50px;"></i>
                            </div>
                            <div>
                                <h5 class="font-weight-bold">TOTAL</h5>
                                <h5 class="font-weight-bold">TORTAS</h5>
                            </div>
                            <div>
                                <h1 class="font-weight-bold">${TA[0].total}</h1>
                            </div>
                        </div>
                    </div>
                    <div class="card p-0 bg-success border border-danger col-md-5 mx-auto">
                        <div class="card-body d-flex justify-content-around text-light">
                            <div>
                                <i class="fa fa-check-square" style="font-size: 50px;"></i>
                            </div>
                            <div>
                                <h5 class="font-weight-bold">TORTAS</h5>
                                <h5 class="font-weight-bold">DISPONIBLES</h5>
                            </div>
                            <div>
                                <h1 class="font-weight-bold">${TAD[0].total}</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row d-flex my-4 mb-5">
                    <div class="card p-0 bg-danger border border-success col-md-5 mx-auto">
                        <a class="visible nav-link text-light" href="ArtND.htm">
                            <div class="card-body d-flex justify-content-around">
                                <div>
                                    <i class="fas fa-ban" style="font-size: 50px;"></i>
                                </div>
                                <div>

                                    <h5 class="font-weight-bold">TORTAS</h5>
                                    <h5 class="font-weight-bold">NO DISPONIBLE</h5>
                                </div>
                                <div>
                                    <h1 class="font-weight-bold">${TAND[0].total}</h1>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="card p-0 bg-warning border border-primary col-md-5 mx-auto">
                        <a class="visible nav-link text-light" href="ListStock.htm">
                            <div class="card-body d-flex justify-content-around">
                                <div>
                                    <i class="fas fa-exclamation-circle" style="font-size: 50px;"></i>
                                </div>
                                <div>
                                    <h5 class="font-weight-bold">TORTAS</h5>
                                    <h5 class="font-weight-bold">POR AGOTARSE</h5>
                                </div>
                                <div>
                                    <h1 class="font-weight-bold">${APA[0].total}</h1>
                                </div>
                            </div>
                        </a>    
                    </div>
                </div>
                <hr class="border border-secondary">
                <div class="row d-flex my-4 mt-5 mb-5">
                    <div class="card p-0 bg-secondary border border-success border-rounded col-md-5 mx-auto">
                        <a class="visible nav-link text-light" href="ClienteList.htm">
                            <div class="card-body d-flex justify-content-around">
                                <div>
                                    <i class="fas fa-users" style="font-size: 50px;"></i>
                                </div>
                                <div>
                                    <h5 class="font-weight-bold">CLIENTES</h5>
                                    <h5 class="font-weight-bold">REGISTRADOS</h5>
                                </div>
                                <div>
                                    <h1 class="font-weight-bold">${TC[0].total}</h1>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="card p-0 bg-dark border border-danger border-rounded col-md-5 mx-auto">
                        <a class="visible nav-link text-light" href="Usuario.htm">
                            <div class="card-body d-flex justify-content-around">
                                <div>
                                    <i class="fas fa-user-tie" style="font-size: 50px;"></i>
                                </div>
                                <div>
                                    <h5 class="font-weight-bold">USUARIOS</h5>
                                    <h5 class="font-weight-bold">DEL SISTEMA</h5>
                                </div>
                                <div>
                                    <h1 class="font-weight-bold">${TU[0].total}</h1>
                                </div>
                            </div>
                        </a>
                    </div>

                </div>
                <hr class="border border-secondary">
                <div class="row d-flex my-4 mt-5">
                    <div class="card p-0 bg-info border border-warning border-rounded col-md-5 mx-auto">
                        <a class="visible nav-link text-light" href="Marca.htm">
                        <div class="card-body d-flex justify-content-around">
                            <div>
                                <i class="fa fa-truck" style="font-size: 50px;"></i>
                            </div>
                            <div>
                                <h5 class="font-weight-bold">DISTRIBUIDORES</h5>
                                <h5 class="font-weight-bold">ASOCIADOS</h5>
                            </div>
                            <div>
                                <h1 class="font-weight-bold">${TM[0].total}</h1>
                            </div>
                        </div>
                            </a>
                    </div>
                </div>
            </div>
        </main>
    </body>
</html>
