<?php

 include "global/conexion.php";

	$nombre   = $_POST["nombre"];
	$email    = $_POST["email"];
	$password = $_POST["password"];
    $fecha    = date ('Y-m-d H:m:s');

	$NO = 0;

	  $consulta  = "SELECT COUNT(*) AS NO FROM clientes WHERE EMAIL = '$email'";
	  $recordset = mysqli_query($link, $consulta);

            while ($registro = mysqli_fetch_array($recordset)) {

			$NO = $registro ["NO"];
}

   if($NO == 0) {

 	  $consulta = "insert into clientes (email, password, nombre, fechaalta) values ('$email', '$password',' $nombre', '$fecha')";

      mysqli_query($link, $consulta);
       echo "Usuario registrado";

} 
   else {

	echo "Correo electrónico ya está registrado; inicie sesión.";
}

?> 