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
    $gsent4=$pdo->prepare('SELECT * FROM imagenes WHERE ID_RECETA = '.$_GET['ID']);
    $gsent4->execute();
    $imagenes = $gsent4->fetchALL();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    

    <link rel="stylesheet" href="assets\dist\css\bootstrap.min.css">
    
    <link rel="stylesheet" href="./css/style.css" type="text/css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Open+Sans&family=PT+Sans:wght@400;700&display=swap">
    <style>
        h1,h2,h3,h4,h5,h6{
            font-weight: bold;
        }
    </style>
</head>
<body>
    <header class="text-center footer-style">
        <nav class="barra">
            <a class="navbar-brand d-flex justify-content-start" href="index.php">
                <img src="quokka marinero.png" width="250">
            </a>
            <h1>Quokka Chef</h1>

            <nav class="navegacion" style="text-align:center;">
                <a href="nosotros.html" class="boton_p btn-outline-warning btn-lg rounded-pill">Recetas</a>
                <a href="cursos.html" class="boton_p btn-outline-warning btn-lg rounded-pill">Ingreso</a>
                <a href="formulario.html" class="boton_p btn-outline-warning btn-lg rounded-pill">Publicar</a>
            </nav>
        </nav>
    </header>


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
        <?php foreach($imagenes as $dato2){
             echo '<div class="d-flex justify-content-center">';
            if($dato2['orden'] == $dato['orden']){
               
                echo '<img src="'.$dato2['direccion'].'.png" width="250" style="">';
                
            }
            echo '</div>';
        }
        ?>
        
    <?php endforeach?>
</body>
</html>