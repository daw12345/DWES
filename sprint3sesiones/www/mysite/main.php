<?php
	$db = mysqli_connect('172.16.0.2', 'root', '1234', 'mysitedb') or die('Fail');
?>
<html>
 <head>
	<style>
	table{
	border-collapse: collapse;
	border-width: thick;
	}
	.ima{
	width: 80%;
	height: 80%;

	}
	.ima:hover{
	transition: 1s all ease-in-out;
	transform:scale(0.9);
	border: 5px solid red;
	}
	.centrado{
	text-align: center;
	}
	
	</style>
 </head>
 <body>
	 <a href="/logout.php">Logout</a>
	 <a href="/cambiarcontraseña.html">Modificar contraseña</a>
  
	<table border="1">
	<tr>
	<th>Id</th>
	<th>Nombre</th>
	<th>Portada</th>
	<th>Valoracion</th>
	<th>Sinopsis</th>
	</tr>
	<?php
	//lanzar un query
	$query = 'SELECT * FROM tPeliculas';
	$result = mysqli_query($db, $query) or die('Query error');

	$idis = 1;
	//recorrer el resultado
	while ($row = mysqli_fetch_array($result)) {
	echo  '<tr>';
	echo '<td class="centrado">'.$row[0];
	echo '</td>';
	echo '<td class="centrado">'.$row[1].'</td>';
	echo '<td class="centrado"><a href="/detail.php?pelicula_id='.$row[0];
	echo '"><img class="ima" src="'.$row[2];
	echo '" width="200" height="200" ></a>';
	echo '</td>';
	echo '<td class="centrado">'.$row[3].'</td>';
	echo '<td class="centrado">'.$row[4].'</td>';
	echo '</tr>';
	}
	msqli_close($db);
	?>
	</table>
 </body>
</html>


