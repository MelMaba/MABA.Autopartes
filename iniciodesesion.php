<?php

 include "global/conexion.php";

	$email    = $_POST["email"];
	$password = $_POST["password"];

	$NO = 0;

	  $consulta  = "SELECT COUNT(*) AS NO FROM clientes WHERE EMAIL = '$email' AND PASSWORD = '$password'";
	  $recordset = mysqli_query($link, $consulta);

            while ($registro = mysqli_fetch_array($recordset)) {

			$NO = $registro ["NO"];
}

   if ($NO == 0) { //Usuario no encontrado

echo 0;

} else { //Sí exite el usuario

	echo 1;
}



?>