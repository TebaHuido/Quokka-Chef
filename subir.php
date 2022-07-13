<?php
include ("bd.php");
$imagen=addslashes(file_get_contents($_FILES['imagen']['tmp_name']));
$gsent2 = $pdo->prepare('SELECT max(ID_Receta) FROM receta;');
$gsent2->execute();
$id = $gsent2->fetchALL()[0];
$gsent=$pdo->prepare("INSERT INTO `receta`(`Descripcion`, `Nombre`, `ID_Receta`, `Tipo`, `Puntaje`, `Autor`, `Tiempo`, `Med_tiempo`, `Porciones`, `Foto`) VALUES "+
"('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]','[value-9]','[value-10]')");
$gsent=$pdo->prepare("INSERT INTO `ingredientes`(`ingredientes`, `ID_Receta`) VALUES ('[value-1]','[value-2]')");
$gsent=$pdo->prepare("INSERT INTO `intrucciones`(`intruccion`, `orden`, `ID_Receta`) VALUES ('[value-1]','[value-2]','[value-3]')");

$gsent->execute();
header('Location: index.php');
?>