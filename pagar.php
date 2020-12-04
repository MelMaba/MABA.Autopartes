<?php
include 'global/Config.php';
include 'global/conexion.php';
include 'carrito.php';
include 'templates/cabecera.php';
 ?>

<?php

if($_POST){

$total     = 0;
$SID       = session_id();
$Correo    = $_POST['email'];
/*$recibe    = $_POST['recibe'];
$calle     = $_POST['calle'];
$colonia   = $_POST['colonia'];
$estado    = $_POST['estado'];
$municipio = $_POST['municipio'];
$cp        = $_POST['cp'];
$telefono  = $_POST['telefono'];*/


    foreach($_SESSION['CARRITO'] as $indice=>$producto){

       $total = $total + ($producto['PRECIO'] * $producto['CANTIDAD']);
 
   }

   $sentencia = $pdo->prepare("INSERT INTO `pedido` 
   (`id`, `ClaveTransaccion`, `PaypalDatos`, `Fecha`, `recibe`,`calle`, `colonia`, 
   `estado`, `municipio`, `cp`, `telefono`,`Correo`, `Total`, `Status`) 
  
   VALUES (NULL, :ClaveTransaccion, '', 
   NOW(), recibe, calle, colonia, estado, municipio, 
   cp, telefono, :Correo, :Total, 'Pendiente');");


$sentencia->bindParam(":ClaveTransaccion", $SID);
$sentencia->bindParam(":Correo", $Correo);
$sentencia->bindParam(":Total", $total);
$idVenta=$pdo->lastInsertId();
$sentencia->execute();

   foreach($_SESSION['CARRITO'] as $indice=>$producto){

   $sentencia=$pdo->prepare("INSERT INTO 
   `pedidodetalle` (`ID`, `IDVENTA`, `IDPRODUCTO`, `PRECIOUNITARIO`, `CANTIDAD`, `DESCARGADO`) 
   VALUES (NULL, :IDVENTA, :IDPRODUCTO, :PRECIOUNITARIO, :CANTIDAD, '0');");





$sentencia->bindParam(":IDVENTA", $idVenta);
$sentencia->bindParam(":IDPRODUCTO",  $producto['ID']);
$sentencia->bindParam(":PRECIOUNITARIO", $producto['PRECIO']);
$sentencia->bindParam(":CANTIDAD",  $producto['CANTIDAD']); 
$idVenta=$pdo->lastInsertId();
$sentencia->execute();



} 

//echo "<h3>" .$total. "</h3>";
   }
?>

<div class="jumbotron text-center">
    <h1 class="display-4">¡Paso Final!</h1>
    <hr class="my-4">
    <p class="lead">Es monento de pagar con PayPal la cantidad de: 
    <h4>$<?php echo number_format($total, 2); ?></h4>
    </p>
    <p>Los productos serán enviados a la dirección que nos proporcionaste.<br/>
    <strong>Para cualquier aclación, escribenos a: simatulan@gmail.com </strong>
    </p>
</div>

<?php
include "templates/pie.php";
?>
