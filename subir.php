<?php
include ("bd.php");
$carpeta_fotopr='./fotos/foto_prin/';
$carpeta_fotopaso='./fotos/foto_paso/';
$imgp=$carpeta_fotopr.basename($_FILES["foto_principal"]["name"]);$_FILES["foto_principal"]["name"];
$gsent=$pdo->prepare("INSERT INTO `receta`(`Descripcion`, `Nombre`, `ID_Receta`, `Tipo`, `Puntaje`, `cont_puntaje`, `Autor`, `Tiempo`, `Med_tiempo`, `Porciones`, `Foto`) VALUES ('".$_POST['desc']."','".$_POST['nombre']."',NULL,'".$_POST['tipo']."',0,0,'".$_POST['autor']."','".$_POST['tiem']."','minuto','".$_POST['porc']."','".$imgp."')");
move_uploaded_file($_FILES["foto_principal"]["tmp_name"],$imgp);
$gsent->execute();
$gsent2 = $pdo->prepare('SELECT max(ID_Receta) FROM receta;');
$gsent2->execute();
$idmay = $gsent2->fetchALL()[0];
$id=$idmay[0];
for ($i = 0; $i <$_POST['cant_paso'] ; $i++) {
    $x=$i+1;
    $gsent3=$pdo->prepare("INSERT INTO `intrucciones`(`intruccion`, `orden`, `ID_Receta`) VALUES ('".$_POST['paso'.$i.'']."','$x','$id')");
    $gsent3->execute();
    for ($j=0; $j <3 ; $j++) {
        $y=$j+1;
        
        if ($_FILES['foto'.$i.$j.'']["size"] != 0) {
         $imgpaso=$carpeta_fotopaso. basename($_FILES['foto'.$i.$j.'']["name"]);   # code...
        move_uploaded_file($_FILES['foto'.$i.$j.'']["tmp_name"],$imgpaso);
        $gsent4=$pdo->prepare("INSERT INTO `imagenes`(`direccion`, `orden_interno`, `orden`, `ID_Receta`) VALUES ('".$imgpaso."','$y','$x','$id')");
        $gsent4->execute();    
        }

        
    }
}
for ($a=0; $a < $_POST['cant_ing']; $a++) { 
$gsent5=$pdo->prepare("INSERT INTO `ingredientes`(`ingredientes`, `ID_Receta`) VALUES ('".$_POST['check'.$a.'']."','$id')");
$gsent5->execute();

}
header('Location: formulario.php?id='.$_POST['nombre']);


?>