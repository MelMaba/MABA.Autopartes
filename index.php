<?php
include 'global/Config.php';
include 'global/conexion.php';
include 'carrito.php';
include 'templates/cabecera.php';
 ?>
<!DOCTYPE html>
<html>
  <head>
    <title>HTML5 Video</title>
  </head>
  <body>



     <center><Video width='560' height='320' controls>
      <source src='Imagenes/MABAVideo.mp4'  type='video/mp4'>
      </video>
</center>
<center>
<Audio width='560' height='320' controls>
       <sourse  src='Imagenes/MABAAudio.mp3' type ='audio/mp3'>
</audio></center>
  </body>
</html>

<br/>
<?php if($mensaje!="") { ?>

   <div class="alert alert-success">

   <?php echo $mensaje; ?>
    
    <a href = "mostrarcarrito.php" class = "badge badge-success">Ver carrito</a>
        </div>

<?php  }?>
<h1>Productos</h1>
<div class="row">
   <?php
                    $sentencia=$pdo->prepare("SELECT * FROM `tbl`");
                    $sentencia->execute();
                    $listaProductos=$sentencia->fetchAll(PDO::FETCH_ASSOC);
                   // print_r($listaProductos);
                    ?> 

<?php foreach($listaProductos as $producto){ ?>
                    
       <div class = "col-3">
      <div class="card">
            <img 
            title = "<?php echo $producto['Nombre']; ?>"
            src   = "<?php echo $producto['Imagen']; ?>" 
            class = "card-img-top" 
            alt   = "<?php echo $producto['Nombre']; ?>"
            
            data-toggle  ="popover"
            data-trigger ="hover"
            data-content ="<?php echo $producto['Descripcion']; ?>"
            heigth = "317px"
>    <div class = "card-body">
            <span><?php echo $producto['Nombre']; ?></span>
                <h5 class = "card-title">$<?php echo $producto['Precio']; ?></h5>
                <p class  = "card-text">Descripción</p>
  <form action="" method="post">
 <input type ="hidden" name ="id"       id ="id"       value = "<?php echo openssl_encrypt ($producto['id'    ], COD, KEY); ?>">
    <input type ="hidden" name ="Nombre"   id ="Nombre"   value = "<?php echo openssl_encrypt ($producto['Nombre'], COD, KEY); ?>">
    <input type ="hidden" name ="Precio"   id ="Precio"   value = "<?php echo openssl_encrypt ($producto['Precio'], COD, KEY); ?>">
    <input type ="hidden" name ="Cantidad" id ="Cantidad" value = "<?php echo openssl_encrypt (1,                   COD, KEY); ?>">
  <button 
             class = "btn btn-primary" 
                name  = "btnAccion"  
                value = "Agregar" 
                type  = "submit" >Agregar al carrito</button>
</form>
 </div>        
    </div>
    </div>
                        
<?php  } ?>
</div>
<script>
$(function () {
  $('[data-toggle="popover"]').popover()
});
</script>
<?php
include "templates/pie.php";
?>



