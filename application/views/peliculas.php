<head>
	<!--<link href="<?php echo base_url();?>css/peliculas.css" rel="stylesheet">-->
</head>

<body background="">
    <br><br>
    <?php
        foreach ($consulta->result_array() as $fila)
        {
            echo "<h2>".$fila['Titulo']."</h2>";
            echo "<img src=".$fila['Imagen']." height=240 width=154>";
            echo "<h3>Dirigida por ".$fila['Director']."</h3>";
            echo "<h2>Sinopsis</h2>";
            echo "<h3>".$fila['Sinopsis']."</h3>";
            echo "<hr/>";
        }
        ?>
 	
		



</body>