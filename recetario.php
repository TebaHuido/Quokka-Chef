<?php
include_once'bd.php';
$gsent=$pdo->prepare('SELECT * FROM intrucciones WHERE ID_RECETA = 1');
$gsent->execute();
$res = $gsent->fetchALL();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div class="container">
        <div class="d-flex bd-highlight">
            <div class="p-2 flex-grow-1 bd-highlight"id="ingredientes">Lorem, ipsum dolor.</div>
            <div class="p-2 bd-highlight"id="imagen"></div>
          </div>
    </div>
    <h2>Pasos a seguir:</h2>
    <?php foreach($res as $dato):?>
        <h3><?php echo $dato['orden']," ", $dato['intruccion'] ?></h3>
    <?php endforeach?>
    <script src="ajax.js"></script>
</body>
</html>