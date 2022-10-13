<?php
	$db = mysqli_connect('localhost', 'root', '1234', 'mysitedb') or die('Fail');
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
	.centrado{
	text-align: center;
	}
	</style>
 </head>
 <body>
  <h1>Conexión establecida</h1>
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


