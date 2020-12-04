<?php

 include "global/cabecera.php";

	$nombre   = $_POST["nombre"];
	$email    = $_POST["email"];
	$mensaje = $_POST["mensaje"];
    $fecha    = date ('Y-m-d H:m:s');

	$NO = 0;

	  $consulta  = "SELECT COUNT(*) AS NO FROM contactos WHERE EMAIL = '$email'";
	  $recordset = mysqli_query($link, $consulta);

            while ($registro = mysqli_fetch_array($recordset)) {

			$NO = $registro ["NO"];
}

   if($NO == 0) {

 	  $consulta = "INSERT INTO `contactos` (`nombre`, `email`, `mensaje`, `fecha`) VALUES (	'$nombre', '$email', '$mensaje', '$fecha')";

      mysqli_query($link, $consulta);
       echo "El mensaje enviado";

} 
   else {

	//echo "Correo electrónico ya está registrado; inicie sesión.";
}

?> 