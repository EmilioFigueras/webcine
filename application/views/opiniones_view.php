<header class="carousel slide">
<?php
	$primera = 0;
	echo "<br /><br />";
	if($opiniones->num_rows() >0){
		foreach($opiniones->result_array() as $fila){
			if($primera==0){
				echo "<h2>Opiniones de ".$fila['titulo'].": </h2>";
				$primera++;
			}
			echo "<h3>Comentario del usuario ".$fila['username'].": ".$fila['opinion']."</h3>";
		}
	}
?>	
</header>