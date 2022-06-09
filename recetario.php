<?php
include_once'bd.php';
$gsent=$pdo->prepare('SELECT * FROM intrucciones WHERE ID_RECETA = 1 ORDER BY orden' );
$gsent->execute();
$intrucciones = $gsent->fetchALL();
$gsent2=$pdo->prepare('SELECT * FROM ingredientes WHERE ID_RECETA = 1' );
$gsent2->execute();
$ingredientes = $gsent2->fetchALL();
$gsent3=$pdo->prepare('SELECT * FROM receta WHERE ID_RECETA = 1' );
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
    <link href="assets\dist\css\bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <h1><?php echo $receta['Nombre']?></h1>
    <h3><?php echo "puntaje: ".$receta['Puntaje']. " tipo: ".$receta['Tipo'] ." tiempo: ".$receta['Tiempo']." ".$receta['Med_tiempo']." porciones: ".$receta['Porciones']. " autor: ".$receta['Autor'] ?></h3>

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
        <h3><?php echo $dato['orden'],". ", $dato['intruccion'] ?></h3>
    <?php endforeach?>
    <script src="ajax.js"></script>
</body>
</html>