<?php
include_once'bd.php';
$gsent5=$pdo->prepare('SELECT * FROM receta ORDER BY Puntaje desc limit 3;' );
$gsent5->execute();
$topcito = $gsent5->fetchALL();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QUOKKA CHEF</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&family=PT+Sans:wght@400;700&display=swap"
        rel="stylesheet">
    <link href="assets/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
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
        <script>
        var id
        function mandar(id){
            window.location.href = "recetario.php?ID=" + id;
            console.log(id);
        }
    </script>
</head>

<body>
    <header class="text-center footer-style">
        <nav class="barra">
            <a class="navbar-brand d-flex justify-content-start" href="pagina principal.html">
                <img src="quokka marinero.png" width="250">
            </a>
            <h1>Quokka Chef</h1>

            <nav class="navegacion" style="text-align:center;">
                <a href="nosotros.html" class="boton_p btn-outline-warning btn-lg rounded-pill">Recetas</a>
                <a href="cursos.html" class="boton_p btn-outline-warning btn-lg rounded-pill">Ingreso</a>
                <a href="contacto.html" class="boton_p btn-outline-warning btn-lg rounded-pill">Contacto</a>
            </nav>
        </nav>
    </header>
    <div class="container" style="margin-top: 1rem;">
        <div class="row">
            <div class="col-8" style="border-style: none solid none none">
                <div class="receta " style="border-style: double">
                    <h2> Recetas faciles de Aprender </h2>
                    <p> Aprende de los expertos con las mejores recetas y consejos</p>
                </div>
                <br>
                <div >

                </div>

            </div>
            <div class="col-4">
                <?php foreach ($topcito as $dato):?>
                    <div onclick='mandar(<?php echo $dato["ID_Receta"] ?> )' style="margin-bottom: 2rem">
                        <div class="card">
                            <img src="<?php echo $dato["Foto"].".png" ?>" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title"><?php echo $dato["Nombre"]?></h5>
                                <p class="card-text"><?php echo $dato["Descripcion"]?></p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">
                                    <div class="d-flex justify-content-center">
                                        <?php for($i=0;$i<$dato['Puntaje'];$i++){
                                            echo '<img
                                            src="Icon_Star_clip_art.svg"
                                            height="40"
                                            width="40" />';
                                        }?>
                                    </div>
                                </small>
                            </div>
                        </div>
                    </div>
                <?php endforeach?>
            </div>
        </div>
    </div>
</body>

</html>