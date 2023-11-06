$(document).ready(function () {
    listar();
    listarN();
    
    
    /*LISTA DE MARCAS DISPONIBLES*/
    function listar() {  
       
        $.post("listar.htm", function (data) {
            let body = "";
            data = JSON.parse(data);
            console.log(data);
            $("#usu").dataTable().fnDestroy();
            data.forEach(item => {
                body += `<tr> 
                            <td>` + item.ID_MARCA + ` </td> 
                            <td>` + item.NOM_MARCA + `</td>
                            <td>
                                <button id="` + item.ID_MARCA + `" class="btn btn-warning editar"   data-toggle="modal" data-target="#ajax" title="EDITAR"><i class="fa fa-pen" style="margin-right: 0"></i></button>
                                <button id="` + item.ID_MARCA + `" class="btn btn-danger eliminar" title="ELIMINAR"><i class="fa fa-trash-alt" style="margin-right: 0" ></i></button>
                            </td>
                        </tr>`;
            });
            $("#tbody").html(body);
            $("#usu").dataTable({
                "lengthMenu": [[5, 10, 25, 50, -1], [5, 10, 25, 50, "TODO"]],
                language: idioma_es
            });
        }); 
    }
    
    /*LISTA DE MARCAS NO DISPONIBLES*/
    function listarN() {
        $.post("listarN.htm", function (data) {
            let body = "";
            data = JSON.parse(data);
            console.log(data);
            data.forEach(item => {
                body += `<tr>                            
                            <td>` + item.ID_MARCA + ` </td> 
                            <td>` + item.NOM_MARCA + `</td>
                            <td>                                
                                <button id="` + item.ID_MARCA + `" class="btn btn-success eliminarN" title="ACTUALIZAR"><i class="fa fa-sync" style="margin-right: 0"></i></button>
                            </td>
                        </tr>`;
            });
            $("#tbodyN").html(body);
           
            
        });
    }
    
    /*MUESTRA DATOS POR EL ID*/
    $(document).on('click', '.editar', function () {
        const ID_MARCA = $(this).attr('id');
        $("#agregar").html("Actualizar");
        $("#agregar").addClass("btn-warning");

        $.post('listarID.htm', {ID_MARCA}, function (data) {
            data = JSON.parse(data);
            console.log(data);

            $("#ID_MARCA").val(data[0].ID_MARCA);
            $("#NOM_MARCA").val(data[0].NOM_MARCA);
        });

    });
    
    function limpiar() {
        $("#ID_MARCA").val('');
        $("#NOM_MARCA").val('');
    }
    ;
    
    /*SI TIENE NO TIENE ID AGREGARA SINO ACTUALIZARA*/
    function obtener() {
        var ID_MARCA = $("#ID_MARCA").val();
        var NOM_MARCA = $("#NOM_MARCA").val();

        var op = "";
        if (ID_MARCA === "") {
            op = "insertar";
        } else {
            op = "actualizar";
        }
        const datos = {op, ID_MARCA, NOM_MARCA};
        return datos;
    }
    ;    
    
    /*REALIZARA LA ACCION ACTUALIZAR O AGREGAR*/
    $("#agregar").click(function () {
        const datos = obtener();
        console.log(datos);
        $.post({url: "metodos.htm"},
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
        const ID_MARCA = $(this).attr('id');

        $.post('metodos.htm', {op: "eliminar", ID_MARCA}, function (response) {
            console.log(response);
            listarN();
            listar();
        });
    });
    
    /*ESTADO DISPONIBLE*/
    $(document).on('click', '.eliminarN', function () {
        const ID_MARCA = $(this).attr('id');
        $.post('metodos.htm', {op: "eliminarN", ID_MARCA}, function (response) {
            console.log(response);
            listar();
            listarN();
        });
    });
    
    $("#abrir").click(function (){
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