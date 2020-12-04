<?php
include 'global/Config.php';
include 'carrito.php';
include 'templates/cabecera.php';
 ?>
<br>
 <h3>Lista del carrito</h3>
<?php if(!empty($_SESSION['CARRITO'])) { ?>
 
 <table class="table table-light table-bordered">
     <tbody>
         <tr>
             <th width = "40%">Descripción</th>
             <th width = "15%" class = "text-center">Cantidad</th>
             <th width = "20%" class = "text-center">Precio</th>
             <th width = "20%" class = "text-center">Total</th>
             <th width = "5%">--</th>
         </tr>

<?php $total=0; ?>

<?php foreach($_SESSION['CARRITO'] as $indice=>$producto){  ?>
         <tr>
             <td width = "40%"><?php echo $producto['NOMBRE']?></td>
             <td width = "15%" class = "text-center"><?php echo $producto['CANTIDAD']?></td>
             <td width = "20%" class = "text-center">$<?php echo $producto['PRECIO']?></td>
             <td width = "20%" class = "text-center">$<?php echo number_format($producto['PRECIO']*$producto['CANTIDAD'],2);  ?></td>
             <td width = "5%">

             <form 
             action="" 
             method="post">

             <input 
             type ="hidden" 
             name ="id"      
             id ="id"       
             value = "<?php echo openssl_encrypt ($producto['ID'], COD, KEY); ?>">

             <button 
             class = "btn btn-danger" 
             type  = "submit"
             name  = "btnAccion"
             value = "Eliminar"
             >Eliminar</button>
             
             </form>
             </td>
              </tr>

         <?php $total=$total+($producto['PRECIO']*$producto['CANTIDAD']); ?>

<?php }?>

    <tr>
        <td colspan= "3"  align= "rigth"><h3>Total</h3></td>
        <td align= "rigth"><h3>$<?php echo number_format($total,2);?></h3></td>
        <td></td>
    </tr>
<tr>

<td colspan="5">

<form action="pagar.php" method="post">

<div class="alert alert-primary">
<h3>Formulario de compra</h3>
<div class="form-group">

   <label for="my-input">Nombre</label>
    <input 
    id="recibe" 
    name ="name" 
    class="form-control" 
    type="text"
    placeholder ="Por favor ingrese su nombre"required>
</div>

<div class="form-group">

    <label for="my-input">Calle</label>
    <input 
    id="Calle" 
    
    class="form-control" 
    type="name"
    placeholder ="Por favor ingrese el nombre de su calle"required>
</div>

<div class="form-group">


    <label for="my-input">Colonia</label>
    <input 
    id="Colonia" 
   
    class="form-control" 
    type="name"
    placeholder ="Por favor ingrese el nombre de su colonia"required>
</div>

<div class="form-group">


    <label for="my-input">Estado</label>
    <input 
    id="Estado" 
    
    class="form-control" 
    type="name"
    placeholder ="Por favor ingrese el nombre de su estado"required>
</div>

<div class="form-group">

    <label for="my-input">Municipio</label>
    <input 
    id="Municipio" 
    
    class="form-control" 
    type="name"
    placeholder ="Por favor ingrese el nombre de su municipio"required>
</div>

<div class="form-group">


    <label for="my-input">CP.</label>
    <input 
    id="CP" 
    class="form-control" 
    type="name"
    placeholder ="Por favor ingrese su código postal"required>
</div>

<div class="form-group">
 
    <label for="my-input">Teléfono</label>
    <input 
    id="Telefono" 
    
    class="form-control" 
    type="name"
    placeholder ="Por favor ingrese su número de teléfono"required>
</div>

<label for="my-input">Correo electrónico :</label>
    <input 
    id="email" 
    name ="email" 
    class="form-control" 
    type="email"
    placeholder ="Por favor ingrese tu correo electrónico"required>


<small id = "emailHelp" class = "form-text text-muted">
El comprobante de pago se enviará a este correo electrónico.
</small>

</div>
<button class="btn btn-primary btl-lg btn-block" type="submit" name = "btnAccion"value = "proceder">
Proceda al pago
</form>
</td>
</tr>
</tbody>
</table>

<?php } else  { ?>

<div class = "alert alert-success">
No hay productos en el carrito
</div>
<?php } ?>
   
<?php
include "templates/pie.php";
?>
