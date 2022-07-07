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
    <script>
        function mandar(id){
            window.location.href = "recetario.php?ID=" + id;
        }
        function mandar2(){
            window.location.href = "index.php";
        }
    </script>
</head>

<body>
    <header class="text-center footer-style">
        <nav class="barra">
            <a class="navbar-brand d-flex justify-content-start" href="index.php">
                <img src="quokka marinero.png" width="250">
            </a>
            <div onclick='mandar2()'><h1>Quokka Chef</h1></div>
            

            <nav class="navegacion" style="text-align:center;">
                <a href="index.php" class="boton_p btn-outline-warning btn-lg rounded-pill">Recetas</a>
                <a class="boton_p btn-outline-warning btn-lg rounded-pill">Ingreso</a>
                <a href="formulario.html" class="boton_p btn-outline-warning btn-lg rounded-pill">Publicar</a>
            </nav>
        </nav>
    </header>
    <div class="container" style="margin-top: 1rem;">
        <div class="row">
            <div class="col-8" style="border-style: none solid none none; border-color: sienna;">
                <div class="receta p-3 mb-5 rounded-lg" style="border: tan 5px outset;">
                    <h2> Recetas faciles de Aprender </h2>
                    <p> Aprende de los expertos con las mejores recetas y consejos</p>
                </div>
                <br>
                <div>
                    <div class="container">
                        <?php foreach ($topcito as $dato):?>
                        <div class="row shadow-lg p-3 mb-5 rounded-lg" style="border: 2px tan solid">
                            <div class="col-5" style="display: flex;align-items: center;">
                                <img src="<?php echo $dato["Foto"] ?>"  alt="..." style="margin: auto;">
                            </div>
                            <div class="col-7 ">
                            <h2 class="card-title"><?php echo $dato["Nombre"]?></h2>
                                <p class="card-text">Autor: <?php echo $dato["Autor"]?></p>
                                <p class="card-text">Tipo: <?php echo $dato["Tipo"]?></p>
                                <p class="card-text"><?php echo $dato["Tiempo"]." ".$dato["Med_tiempo"]?> </p>
                                <p class="card-text">Porciones: <?php echo $dato["Porciones"]?> personas </p>
                                <div style="display: flex;align-items: right;"><button type="button" class="boton_p btn btn-outline-warning" style="margin-left: auto" onclick='mandar(<?php echo $dato["ID_Receta"] ?> )'>Ir a Receta</button></div>

                            </div>
                            
                        </div>
                        <br>
                        <?php endforeach?>
                    </div>
                </div>

            </div>
            <div class="col-4">
                <?php foreach ($topcito as $dato):?>
                    <div onclick='mandar(<?php echo $dato["ID_Receta"] ?> )' style="margin-bottom: 2rem">
                        <div class="card">
                            <img src="<?php echo $dato["Foto"]?>" class="card-img-top" alt="...">
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