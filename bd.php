<?php
try {
    $pdo = new PDO('mysql:host=localhost;dbname=quokka_chef', 'chefsito', 'publico');
} catch (PDOException $e) {
    print "¡Error!: " . $e->getMessage() . "<br/>";
    die();
}
?>