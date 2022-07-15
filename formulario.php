<?php
include_once 'bd.php';

?>
<!DOCTYPE html>
<html>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Quokka Chef- sube tu receta</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="./css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/style.css">
    <style>
        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
            font-weight: bold;
        }
    </style>

    <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
    <script>
        function mandar2() {
            window.location.href = "index.php";
        }
    </script>
    <script>
        $(document).ready(function() {

            $("#btn_agregar").click(function() {
                var y
                var z
                var x = $("input:text[name=ingrediente]").val();
                var len = $('.trcheck').length;
                z = len + 1;
                if (x != '') {
                    $("#tabla_body").append('<tr class="trcheck"> <td><input class="check" name="ing" type= "checkbox"> </td> <td > ' + x + '<input hidden type="text" class="rounded-pill check' + len + '" value="' + x + '" id="check' + len + '" name="check' + len + '"></td>' +
                        ' </tr>');
                }

                $("input:text[name=ingrediente]").each(function() {
                    this.value = ''
                });
                $(".cant_ing").val(z);
            });

            $("#btn_borrarsel").click(function() {
                $('#tabla_body tr').has('.check:checked').each(function() {
                    $(this).closest('tr').remove();
                });
                var len = $('.trcheck').length;
                if (len ==0) {
                    $(".cant_ing").val(''); 
                }else{
                    $(".cant_ing").val(len);
                }
                
            });

            $("#ocultar_tabla").click(function() {
                $("#tabla_body").hide();
                $("#tabla_head").css("background-color", "#83a5db");

            });

            $("#mostrar_tabla").click(function() {
                $("#tabla_body").show();
                $("#tabla_head").css("background-color", "transparent");
            });

            $("input:text").focus(function() {
                $(this).css("background-color", "#83a5db");
            });

            $("input:text").blur(function() {
                $(this).css("background-color", "#ffff");
            });

            $(document).on('click', '.add', function() {
                var len = $('.t_paso').length;
                var x = len;
                x++;
                $('#dynamic_field').append('<tr class="t_paso clas' + len + '" data-id="' + len + '"><td>' + '<h3>paso ' + x + '</h3>' +
                    '  <textarea required class="" name="paso' + len + '" rows="3" cols="60"  placeholder="Pon aqui tu receta" style="resize: none"></textarea>' +
                    ' <button type="button" name="addFile" id="addFile" class="btn btn-outline-warning btn-lg rounded-pill boton_p addFile">agregar foto</button></td>' +
                    '</tr> ');
                $(".cant_paso").val(x);
            });

            $(document).on('click', '.addFile', function() {
                var id = $(this).closest('.t_paso').data('id');
                var len1 = $('.t' + id).length;
                if (len1 < 3) {
                    var elem = '<tr class="t' + id + '"><td><input required type="file" name="foto' + id + len1 + '" class="form-control-file" accept=".jpg,.png,.gif"></button>' +
                        '</td><td><button type="button" name="remove" class="btn btn-outline-danger btn-lg rounded-pill boton_p btn_remove">eliminar</button></td></tr>';
                    $(elem).insertAfter($(this).closest('tr'));
                }

            });
            $(document).on('click', '.btn_remove, .btn_remove_all', function() {
                if ($(this).hasClass('btn_remove_all')) {
                    var id = $(this).closest('.t_paso').data('id');
                    $('tr.t' + id).remove();
                }
                $(this).closest('tr').remove();
                var len = $('.t_paso').length;
                if (len ==0) {
                    $(".cant_paso").val(''); 
                }else{
                    $(".cant_paso").val(len);
                }
            });
            $(".btn_remove,.btn_remove_all").click(function() {
                var len = $('.t_paso').length;
                var z = len;
                z--;
                $('tr.clas' + z).remove();
                $('tr.t' + z).remove();
            });


        });
    </script>

</head>


<body>
    <header class="text-center footer-style">
        <nav class="barra">
            <a class="navbar-brand d-flex justify-content-start" href="index.php">
                <img src="quokka marinero.png" width="250">
            </a>
            <div onclick='mandar2()'>
                <h1>Quokka Chef</h1>
            </div>

            <nav class="navegacion" style="text-align:center;">
                <a href="index.php" class="boton_p btn-outline-warning btn-lg rounded-pill">Recetas</a>
                <a href="formulario.php" class="boton_p btn-outline-warning btn-lg rounded-pill">Publicar</a>
            </nav>
        </nav>
    </header>
    <form action="./subir.php" method="POST" enctype="multipart/form-data">
        <div class="container" style="font-size: 15px">
            <div class="row">
                <div class="col-md">
                    <br>
                    <label for="nombre">Nombre de la receta: </label>
                    <input required  class="rounded-pill" id="nombre" placeholder="Nombre" type="text" name="nombre">
                    <br>
                    <br>
                    <label for="autor">Nombre del autor: </label>
                    <input required  class="rounded-pill" id="autor" placeholder="autor" type="text" name="autor">
                    <br>
                    <br>
                    <h4>Descripción de tu receta: </h4>
                    <textarea required  class="" name="desc" rows="3" cols="60" id="comment" placeholder="descripción" style="resize: none"></textarea>
                    <br>
                    <br>
                    <label for="tiem">Tiempo en minutos:</label>
                    <input required  type="number" class="rounded-pill" min="0" placeholder="000" max="999" id="tiem" name="tiem">
                    <br>
                    <br>
                    <label for="porc">Porciones:</label>
                    <input required  type="number" class="rounded-pill" min="0" placeholder="00" max="99" id="porc" name="porc">
                    <br>
                    <br>
                    <label for="fotoprin">Foto de la receta:</label>
                    <input required  type="file" name="foto_principal" class="form-control-file" accept=".jpg,.png,.gif">
                    <br>
                    <label for="tipo">Tipo de receta:</label>
                    <select class="rounded-pill" id="tipo" name="tipo">
                        <option value="rapida">rapida</option>
                        <option value="postre">postre</option>
                        <option value="sopa">sopa</option>
                        <option value="entrada">entrada</option>

                    </select>
                    <br>
                    <label for="ingrediente"> </label>
                    <input   class="rounded-pill" id="ingrediente" placeholder="ingrediente" type="text" name="ingrediente">
                    <br><br>
                    <input type="button" class="boton_p btn btn-outline-warning rounded-pill" id="btn_agregar" style="font-size: large" value="Agregar">
                    <input class="boton_p btn btn-outline-warning rounded-pill" id="btn_borrarsel" type="button" style="font-size: large" value="Borrar seleccion">
                    <br><br>
                    <table>
                        <thead id="tabla_head">
                            <tr>
                                <td width="150px"> Seleccion </td>
                                <td width="150px"> Ingrediente </td>
                            </tr>
                        </thead>
                        <tbody id="tabla_body">
                        </tbody>
                        <tfoot>
                            <td><input class="boton_p btn btn-outline-warning btn-lg rounded-pill" id="ocultar_tabla" type="button" style="font-size: large " value="ocultar tabla"></td>
                            <td><input class="boton_p btn btn-outline-warning btn-lg rounded-pill" id="mostrar_tabla" type="button" style="font-size: large" value="mostrar tabla"></td>
                        </tfoot>
                    </table>
                </div>
                <div class="col-md">
                    <div class="">
                        <form name="add_name" id="add_name">
                            <div class="">
                                <table class="" id="dynamic_field">
                                    <br>
                                </table>
                            </div>
                            <br>
                            <td><button type="button" name="add" id="add" class="btn  add btn-outline-warning btn-lg rounded-pill boton_p">Agregar paso</button></td>
                            <button type="button" name="remove" class="btn btn-outline-danger btn-lg rounded-pill boton_p btn_remove_all">Eliminar ultimo paso</button>
                        </form>
                    </div>
                    <div hidden>
                        <input required type="number" class="rounded-pill cant_paso"  id="cant_paso" name="cant_paso">
                        <input required type="number" class="rounded-pill cant_ing"  id="cant_ing" name="cant_ing">


                    </div>
                </div>

            </div>
            <BR></BR>
            <div class="container">
                <input type="submit" class="boton_p btn btn-outline-warning btn-lg rounded-pill" style="margin: 0; position: absolute; left: 45%;" value="Enviar Receta">
            </div>

        </div>

    </form>
    <br><br>
</body>

</html>