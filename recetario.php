<?php
include_once 'bd.php';
$gsent = $pdo->prepare('SELECT * FROM intrucciones WHERE ID_RECETA = ' . $_GET['ID'] . ' ORDER BY orden');
$gsent->execute();
$intrucciones = $gsent->fetchALL();
$gsent2 = $pdo->prepare('SELECT * FROM ingredientes WHERE ID_RECETA = ' . $_GET['ID']);
$gsent2->execute();
$ingredientes = $gsent2->fetchALL();
$gsent3 = $pdo->prepare('SELECT * FROM receta WHERE ID_RECETA = ' . $_GET['ID']);
$gsent3->execute();
$receta = $gsent3->fetchALL()[0];
$gsent4 = $pdo->prepare('SELECT * FROM imagenes WHERE ID_RECETA = ' . $_GET['ID']);
$gsent4->execute();
$imagenes = $gsent4->fetchALL();

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $receta['Nombre'] ?></title>

    <link rel="stylesheet" href="css\bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Open+Sans&family=PT+Sans:wght@400;700&display=swap">
    <link rel="stylesheet" href="./css/style.css" type="text/css">
    <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
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
        function mandar2() {
            window.location.href = "index.php";
        }

        function puntaje(pts) {
            var puntos = <?php echo $receta['Puntaje'] ?>;
            var votantes = <?php echo $receta['cont_puntaje'] ?>;
            var npuntos = ((puntos * votantes) + pts) / (votantes + 1);
            votantes++;

            $.ajax({
                url: "puntuar.php?ID=" + <?php echo $_GET['ID'] ?> + "&votantes=" + votantes + "&npuntos=" + npuntos,
                success: function(result) {
                }
            })
            
            $("#estrell").html('<h1 id="punto" style="color:orange" style=" display: inline"></h1>') ;
            for(var i=0;i< Math.round(npuntos) ;i++){
                $("#punto").append('<h1 id="punto" style="color:orange; display: inline">???</h1>')
            }
        }
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


    <h1><?php echo $receta['Nombre'] ?></h1>
    <div id="estrell" class="d-flex justify-content-center">
        <div style="display: inline">
            
            <h1 id="punto" style="color:orange" style=" display: inline"></h1>

        </div>
    </div >

    <h3><?php echo "Tipo: " . $receta['Tipo'] . " Tiempo: " . $receta['Tiempo'] . " " . $receta['Med_tiempo'] . " Porciones: " . $receta['Porciones'] . " Autor: " . $receta['Autor'] ?></h3>
    
    <div class="container">
        <div class="row">
            <div class="col">
            <h2 style="text-align: left;">Ingredientes:</h2>
    <div class=" input-group-prepend ml-5">

        <ul class="list-group list-group-flush">
            <?php foreach ($ingredientes as $dato) : ?>
                <li class="list-group-item"><input type="checkbox"><?php echo "  " . $dato['ingredientes'] ?></li>
            <?php endforeach ?>
        </ul>

    </div>
            </div>
            <div class="col">
                <br><br>    
                <img src="<?php echo $receta['Foto'] ?>" alt="">
            </div>
        </div>
    </div>
    <br>
    <h2>Pasos a seguir:</h2>

<div class="container">
    
<?php foreach ($intrucciones as $dato) : ?>
        <h4 style="text-align: left"><?php echo $dato['orden'], ". ", $dato['intruccion'] . '<br><br>' ?></h4>
        <?php foreach ($imagenes as $dato2) {
            echo '<div class="d-flex justify-content-center">';
            if ($dato2['orden'] == $dato['orden']) {

                echo '<img src="' . $dato2['direccion'] . '" width="250" style="">';
            }
            echo '</div>';
        }
        ?>

    <?php endforeach ?></div>
    <form>
        <h3>Puntuar Receta:</h3>
    <h1 class="clasificacion">
        <input id="radio1" type="radio" name="estrellas" value="5">
        <label onclick='puntaje(5)' for="radio1">???</label>
        <input id="radio2" type="radio" name="estrellas" value="4">
        <label onclick='puntaje(4)' for="radio2">???</label>
        <input id="radio3" type="radio" name="estrellas" value="3">
        <label onclick='puntaje(3)' for="radio3">???</label>
        <input id="radio4" type="radio" name="estrellas" value="2">
        <label onclick='puntaje(2)' for="radio4">???</label>
        <input id="radio5" type="radio" name="estrellas" value="1">
        <label onclick='puntaje(1)' for="radio5">???</label>
    </h1>
    </form>
    <div class="m-3" id="disqus_thread"></div>
    <script>
        /**
         *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
         *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */
        /*
        var disqus_config = function () {
        this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
        this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
        };
        */
        (function() { // DON'T EDIT BELOW THIS LINE
            var d = document,
                s = d.createElement('script');
            s.src = 'https://quokka-chef.disqus.com/embed.js';
            s.setAttribute('data-timestamp', +new Date());
            (d.head || d.body).appendChild(s);
        })();
    </script>
    <script>
       
        $(document).ready(function(){
            $(<?php echo '"'.'est'.round($receta['Puntaje'] ).'"'?>).attr('checked', true);
            for(var i=0;i< <?php echo round($receta['Puntaje']) ;?>;i++){
                $("#punto").append('<h1 id="punto" style="color:orange; display: inline">???</h1>')
            }
        });

        

    </script>
    <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
</body>

</html>