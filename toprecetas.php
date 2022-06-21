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
    <title>Document</title>
    <link rel="stylesheet" href="assets\dist\css\bootstrap.min.css">
    
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Open+Sans&family=PT+Sans:wght@400;700&display=swap">
    
    <script>
        var id
        function mandar(id){
            window.location.href = "recetario.php?ID=" + id;
            console.log(id);
        }
    </script>
</head>
<body>
    <?php foreach ($topcito as $dato):?>
        <div onclick='mandar(<?php echo $dato["ID_Receta"] ?> )'>
            <div class="jumbotron jumbotron-fluid d-flex bd-highlight container">

                <div class="p-2 bd-highlight">
                    <img src="<?php echo $dato["Foto"].".png" ?>"height="200">
                </div>
                <div class="p-2 bd-highlight">
                    <h1 class="display-4"><?php echo $dato["Nombre"]?></h1>
                    <p class="lead"><?php echo $dato["Descripcion"]?></p>
                    <div class="d-flex justify-content-center">
                        <?php for($i=0;$i<$dato['Puntaje'];$i++){
                            echo '<img
                            src="Icon_Star_clip_art.svg"
                            height="40"
                            width="40" />';
                        }?>
                    </div>
                </div>
            </div>
        </div>
    <?php endforeach?>
</body>
</html>