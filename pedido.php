<?php
include 'global/Config.php';
include 'global/conexion.php';
include 'carrito.php';
include 'templates/cabecera.php';
 ?>
 
 <form>
<div class="form-grup">
  <h1>Formulario de compra</h1>
  <label for = "exampleInputEmail">Nombre</label>
  <input type="email" class="form-control" id="recibe" arial-describedby = "emailHrlp">
  
</div>

<div class="form-grup">
  <label for = "exampleInputEmail">Calle</label>
  <input type="email" class="form-control" id="calle" arial-describedby = "emailHrlp">
 
</div>

<div class="form-grup">
    <label for = "exampleInputEmail">Colonia</label>
    <input type="email" class="form-control" id="colonia" arial-describedby = "emailHrlp">
    
  </div>
  
  <div class="form-grup">
    <label for = "exampleInputEmail">Estado</label>
    <input type="email" class="form-control" id="estado" arial-describedby = "emailHrlp">
  
  <div class="form-grup">
    <label for = "exampleInputEmail">Municipio</label>
    <input type="email" class="form-control" id="municipio" arial-describedby = "emailHrlp">
    
  
  <div class="form-grup">
    <label for = "exampleInputEmail">CP.</label>
    <input type="email" class="form-control" id="cp" arial-describedby = "emailHrlp">
    
  </div>
  
  <div class="form-grup">
    <label for = "exampleInputEmail">Teléfono</label>
    <input type="email" class="form-control" id="telefono" arial-describedby = "emailHrlp">
   
  </div>

<button type="button" onclick = "pagar()" class="btn btn-primary">Pagar</button>


</div>
<div class ="col-12 text-center">MABA Auto partes SA.de CV. 2020.</div>
</body>
</html>