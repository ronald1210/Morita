$(document).ready(function () {
    listar();
    listarN();

    /*LISTA DE MARCAS DISPONIBLES*/
    function listar() {
        $.post("listar1.htm", function (data) {
            let body = "";
            data = JSON.parse(data);
            console.log(data);
            $("#usu").dataTable().fnDestroy();
            data.forEach(item => {
                body += `<tr> 
                            <td>` + item.ID_USU + ` </td> 
                            <td>` + item.NOM_USU + `</td>
                            <td>` + item.APE_USU + `</td>
                            <td>` + item.DNI_USU + `</td>
                            <td>` + item.DIR_USU + `</td>
                            <td>` + item.NOM_DIST + `</td>
                            <td>` + item.NOM_TIP_USU + `</td>
                            <td>` + item.NOM_ESTADO + `</td>  
                            <td>
                                <button id="` + item.ID_USU + `" class="btn btn-warning editar" data-toggle="modal" data-target="#UsuarioModal" title="EDITAR"><i class="fa fa-pen" style="margin-right: 0"></i></button>
                                <button id="` + item.ID_USU + `" class="btn btn-danger eliminar" title="ELIMINAR"><i class="fa fa-trash-alt" style="margin-right: 0" ></i></button>
                            </td>
                        </tr>`;
            });
            $("#tbody").html(body);
            $("#usu").dataTable({
                "lengthMenu": [[5, 10, 25, 50, -1], [5, 10, 25, 50, "TODO"]],
                language: idioma_es
            });
        });

        $.post("listar2.htm", function (data) {
            let body = "";
            data = JSON.parse(data);
            console.log(data);
            data.forEach(item => {
                body += `<option value="` + item.ID_DIST + `">` + item.NOM_DIST + `</option>`;
            });
            $("#dist").append(body);
        });

        $.post("listar3.htm", function (data) {
            let body = "";
            data = JSON.parse(data);
            console.log(data);
            data.forEach(item => {
                body += `<option value="` + item.ID_TIP_USU + `">` + item.NOM_TIP_USU + `</option>`;
            });
            $("#TipUsu").append(body);
        });
    }

    /*LISTA DE MARCAS NO DISPONIBLES*/
    function listarN() {
        $.post("listarUN.htm", function (data) {
            let body = "";
            data = JSON.parse(data);
            console.log(data);
            data.forEach(item => {
                body += `<tr> 
                            <td>` + item.ID_USU + ` </td> 
                            <td>` + item.NOM_USU + `</td>
                            <td>` + item.APE_USU + `</td>
                            <td>` + item.DNI_USU + `</td>
                            <td>` + item.DIR_USU + `</td>
                            <td>` + item.NOM_DIST + `</td>
                            <td>` + item.NOM_TIP_USU + `</td>
                            <td>` + item.NOM_ESTADO + `</td>  
                            <td>                                
                                <button id="` + item.ID_USU + `" class="btn btn-success eliminarN" title="ACTUALIZAR"><i class="fa fa-sync-alt" style="margin-right: 0"></i></button>
                            </td>
                        </tr>`;
            });
            $("#tbodyN").html(body);
        });
    }

    /*MUESTRA DATOS POR EL ID*/
    $(document).on('click', '.editar', function () {
        const ID_USU = $(this).attr('id');
        $("#agregar").html("Actualizar");
        $("#agregar").addClass("btn-warning");

        $.post('listarIDU.htm', {ID_USU}, function (data) {
            data = JSON.parse(data);
            console.log(data);
            $("#ID_USU").val(data[0].ID_USU);
            $("#NOM_USU").val(data[0].NOM_USU);
            $("#APE_USU").val(data[0].APE_USU);
            $("#DNI_USU").val(data[0].DNI_USU);
            $("#DIR_USU").val(data[0].DIR_USU);
            $("#CLAVE_USU").val(data[0].CLAVE_USU);
            $("#TipUsu").val(data[0].ID_TIP_USU);
            $("#dist").val(data[0].ID_DIST);
        });

    });

    function limpiar() {
        $("#ID_USU").val('');
        $("#NOM_USU").val('');
        $("#APE_USU").val('');
        $("#DNI_USU").val('');
        $("#DIR_USU").val('');
        $("#CLAVE_USU").val('');
        $("#TipUsu").val(0);
        $("#dist").val(0);
    }
    ;

    /*SI TIENE NO TIENE ID AGREGARA SINO ACTUALIZARA*/
    function obtener() {
        var ID_USU = $("#ID_USU").val();
        var NOM_USU = $("#NOM_USU").val();
        var APE_USU = $("#APE_USU").val();
        var DNI_USU = $("#DNI_USU").val();
        var DIR_USU = $("#DIR_USU").val();
        var CLAVE_USU = $("#CLAVE_USU").val();
        var ID_TIP_USU = $("#TipUsu").val();
        var ID_DIST = $("#dist").val();

        var op = "";
        if (ID_USU === "") {
            op = "insertar";
        } else {
            op = "actualizar";
        }
        const datos = {op, ID_USU, NOM_USU, APE_USU, DNI_USU, DIR_USU, CLAVE_USU, ID_TIP_USU, ID_DIST};
        return datos;
    }
    ;

    /*REALIZARA LA ACCION ACTUALIZAR O AGREGAR*/
    $("#agregar").click(function () {
        const datos = obtener();
        console.log(datos);
        $.post({url: "metodosU.htm"},
                datos, function (data) {
                    console.log(data);
                });
        setTimeout(function () {
            listar();
        }, 100);
        limpiar();

        $("#agregar").html("Agregar");
        $("#agregar").removeClass("btn-warning");
    });

    /*ESTADO NO DISPONIBLE*/
    $(document).on('click', '.eliminar', function () {
        const ID_USU = $(this).attr('id');

        $.post('metodosU.htm', {op: "eliminar", ID_USU}, function (response) {
            console.log(response);
            listarN();
            listar();
        });
    });

    /*ESTADO DISPONIBLE*/
    $(document).on('click', '.eliminarN', function () {
        const ID_USU = $(this).attr('id');
        $.post('metodosU.htm', {op: "eliminarN", ID_USU}, function (response) {
            console.log(response);
            listar();
            listarN();
        });
    });

    $("#abrir").click(function () {
        limpiar();
    });

    //CDN DATATABLE - IDIOMA
    var idioma_es = {
        "sProcessing": "Procesando...",
        "sLengthMenu": "Mostrar _MENU_ registros",
        "sZeroRecords": "No se encontraron resultados",
        "sEmptyTable": "Ningún dato disponible en esta tabla",
        "sInfo": "_START_ al _END_ de un total de _TOTAL_ registros",
        "sInfoEmpty": "Ningún registro.",
        "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
        "sInfoPostFix": "",
        "sSearch": "Buscar:",
        "sUrl": "",
        "sInfoThousands": ",",
        "sLoadingRecords": "Cargando...",
        "oPaginate": {
            "sFirst": "Primero",
            "sLast": "Último",
            "sNext": "Siguiente",
            "sPrevious": "Anterior"
        },
        "oAria": {
            "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
            "sSortDescending": ": Activar para ordenar la columna de manera descendente"
        }
    };

});

