<?php //Ejemplo aprenderaprogramar.com

$diametro = $_POST['diam'];

$altura = $_POST['altu'];

$radio = $diametro/2;

$Pi = 3.141593;

$volumen = $Pi*$radio*$radio*$altura;

echo "<br/> &nbsp; El volumen del cilindro es de". $volumen. "metros cúbicos";

?>