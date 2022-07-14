<?php
include ("bd.php");
$gsent2 = $pdo->prepare('SELECT max(ID_Receta) FROM receta;');
$gsent2->execute();
$idmay = $gsent2->fetchALL()[0];
$gsent=$pdo->prepare("INSERT INTO `receta`(`Descripcion`, `Nombre`, `ID_Receta`, `Tipo`, `Puntaje`, `cont_puntaje`, `Autor`, `Tiempo`, `Med_tiempo`, `Porciones`, `Foto`) VALUES ('".$_POST['desc']."','".$_POST['nombre']."',NULL,'".$_POST['tipo']."',0,0,'".$_POST['autor']."','".$_POST['tiem']."','minuto','".$_POST['porc']."','null')");
$id=$idmay[0]+1;
$gsent->execute();
for ($i = 0; $i <$_POST['cant_paso'] ; $i++) {
    $x=$i+1;
    $gsent3=$pdo->prepare("INSERT INTO `intrucciones`(`intruccion`, `orden`, `ID_Receta`) VALUES ('".$_POST['paso'.$i.'']."','$x','$id')");
    $gsent3->execute();
    for ($j=0; $j <3 ; $j++) {
        $y=$j+1;
        $gsent4=$pdo->prepare("INSERT INTO `imagenes`(`direccion`, `orden_interno`, `orden`, `ID_Receta`) VALUES ('".$_POST['foto'.$i.$j.'']."','$y','$x','$id')");
        $gsent4->execute();
        
    }
}
for ($a=0; $a < $_POST['cant_ing']; $a++) { 
$gsent5=$pdo->prepare("INSERT INTO `ingredientes`(`ingredientes`, `ID_Receta`) VALUES ('".$_POST['check'.$a.'']."','$id')");
$gsent5->execute();

}

?>