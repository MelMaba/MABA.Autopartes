<?php
include "global/conexion.php";

$categorías = $_POST["categorias"];
$texto      = $_POST["texto"];


echo '<div class="row">';
$consulta = "SELECT * FROM producto WHERE idcategoria = 3 AND descripción like  '%".$texto."%'";
$recordset = mysqli_query($link, $consulta);



while($registro = mysqli_fetch_array($recordset)) {

      $idproducto  = $registro ["idproducto"];
      $descripción = $registro ["descripción"];
      $precio      = $registro ["precio"];
      $urlimagen = "imagenes/" .$registro ["urlimagen"];
      $precio = "$".number_format($precio, 2);
     
        echo '<div class="col-lg-4">';
        echo '<img src="'.$urlimagen.'" width = "200px">';
        echo '<h2>'       .$descripción.'</h2>';
        echo '<p>precio: '.$precio.     '</p>';
        echo '</div>';
       
}
echo '</div>';
?>

   
       