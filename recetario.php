<?php
include_once'bd.php';
    $gsent=$pdo->prepare('SELECT * FROM intrucciones WHERE ID_RECETA = '.$_GET['ID'].' ORDER BY orden' );
    $gsent->execute();
    $intrucciones = $gsent->fetchALL();
    $gsent2=$pdo->prepare('SELECT * FROM ingredientes WHERE ID_RECETA = '.$_GET['ID'] );
    $gsent2->execute();
    $ingredientes = $gsent2->fetchALL();
    $gsent3=$pdo->prepare('SELECT * FROM receta WHERE ID_RECETA = '.$_GET['ID'] );
    $gsent3->execute();
    $receta = $gsent3->fetchALL()[0];

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    

    <link rel="stylesheet" href="assets\dist\css\bootstrap.min.css">
    
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Open+Sans&family=PT+Sans:wght@400;700&display=swap">
    <style>
        h1,h2,h3,h4,h5,h6{
            font-weight: bold;
        }
    </style>
</head>
<body>

    <nav class="barra text-center ">
        <a class="navbar-brand d-flex justify-content-start" href="pagina principal.html" >
            <img src="quokka2.png" width="250" >
        </a>
        <h1>Quokka Chef</h1>
        <nav class="navegacion" style="text-align:center;">
            <a href="nosotros.html" class="boton_p">Recetas</a>
            <a href="cursos.html" class="boton_p">Ingreso</a>
            <a href="contacto.html" class="boton_p">Contacto</a>
        </nav>
    </nav>


    <h1><?php echo $receta['Nombre']?></h1>
    <div class="d-flex justify-content-center">
    <?php for($i=0;$i<$receta['Puntaje'];$i++){
        echo '<img
        src="Icon_Star_clip_art.svg"
        height="40"
        width="40" />';
    }?></div>
    <h3><?php echo "Tipo: ".$receta['Tipo'] ." Tiempo: ".$receta['Tiempo']." ".$receta['Med_tiempo']." Porciones: ".$receta['Porciones']. " Autor: ".$receta['Autor'] ?></h3>
    </div>
    <h2>Ingredientes:</h2>
    <div class="input-group-prepend">

    <ul class="list-group list-group-flush">
    <?php foreach($ingredientes as $dato):?>
        <li class="list-group-item"><input type="checkbox"><?php echo "  ". $dato['ingredientes'] ?></li>
    <?php endforeach?>
    </ul>

    </div>
    <h2>Pasos a seguir:</h2>
    <?php foreach($intrucciones as $dato):?>
        <h3><?php echo $dato['orden'],". ", $dato['intruccion'].'<br><br>' ?></h3>
    <?php endforeach?>
    <script src="ajax.js"></script>
</body>
</html>