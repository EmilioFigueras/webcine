<head>
	<!--<link href="<?php echo base_url();?>css/peliculas.css" rel="stylesheet">-->
</head>

<body background="">
<header class="carousel slide">
<div id="content">
 <br>
 	<?php
 		foreach ($consulta->result_array() as $fila)
		{
    		echo "<h2>".$fila['Titulo']."</h2>";
    		echo "<img src=".base_url().$fila['Imagen'].">";
    		echo "<h3>Dirigida por ".$fila['Director']."</h3>";
    		echo "<h2>Sinopsis</h2>";
    		echo "<h3>".$fila['Sinopsis']."</h3>";
		}
		?>
		



</div><!--<div id="content">-->
</header>
</body>