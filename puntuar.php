<?php
function php_func(){
    include_once 'bd.php';
    $gsent = $pdo->prepare('UPDATE receta SET Puntaje='.$_GET['npuntos'].', cont_puntaje='.$_GET['votantes'].' WHERE ID_Receta='.$_GET['ID']);
    $gsent->execute();
    echo "puntuado";
}   
php_func();
?>
