<head>
	<!--<link href="<?php echo base_url();?>css/peliculas.css" rel="stylesheet">-->
</head>

<div id="contenido">
<body>
    <br><br>
    <?php
        $fila = $consulta->row_array();
        echo "<center><h2>".$fila['titulo']."</h2></center>";
        echo "<br>";
        echo "<center><img src=".$fila['imagen']." height=240 width=154></center>";
        echo "<center><h3>Dirigida por ".$fila['director']."</h3></center>";
        echo "<br>";
        echo "<h2>Sinopsis</h2>";
        echo "<h3>".$fila['sinopsis']."</h3>";
        //Si estas logueado
         if(($this->session->userdata('user_name')!="")){
            $votacion = $this->Peliculas_model->buscar_votacion($fila['id'], $this->session->userdata('user_id'));
            if($votacion != -1){
               echo "<h2>Votacion actual: ".$votacion."</h2>";
               echo "<label for='voto'>Votacion: </label> <select name='voto' id='voto'> 
                    <option value='1'>1</option>
                    <option value='2'>2</option>
                    <option value='3'>3</option>
                    <option value='4'>4</option>
                    <option value='5'>5</option>
                    <option value='6'>6</option>
                    <option value='7'>7</option>
                    <option value='8'>8</option>
                    <option value='9'>9</option>
                    <option value='10'>10</option>
                    </select> <br />";
                echo "<input type='hidden' name='idUsuario' id='idUsuario' value='".$this->session->userdata('user_id')."' />";
                echo "<input type='hidden' name='idPelicula' id='idPelicula' value='".$fila['id']."' />";
                echo "<button id='modificar'>Modificar</button>";
                echo "<div id='mens'></div>";

            }else{
                echo "<label for='voto'>Votacion: </label> <select name='voto' id='voto'> 
                    <option value='1'>1</option>
                    <option value='2'>2</option>
                    <option value='3'>3</option>
                    <option value='4'>4</option>
                    <option value='5'>5</option>
                    <option value='6'>6</option>
                    <option value='7'>7</option>
                    <option value='8'>8</option>
                    <option value='9'>9</option>
                    <option value='10'>10</option>
                    </select> <br />";
                echo "<input type='hidden' name='idUsuario' id='idUsuario' value='".$this->session->userdata('user_id')."' />";
                echo "<input type='hidden' name='idPelicula' id='idPelicula' value='".$fila['id']."' />";
                echo "<label for='opinion'>Opinion: </label> <textarea name='opinion' id='opinion'></textarea><br /> ";
                echo "<button id='votar'>Votar</button>";
                echo "<div id='mens'></div>";
            }
        }
        echo "<a href='".base_url()."index.php/Peliculas/opiniones/".($fila['id'])."'>Ver opiniones</a><br />";
        echo "<br>";
        echo "<div align='center'>";
        if(($fila['id']-1)>=$this->Peliculas_model->primera_id($fila['tipo'])){
            echo "<a href='".base_url()."index.php/Peliculas/consultar/1/".($fila['id']-1)."'> <img src='".base_url()."images/anterior.jpg' height=50 width=50> </a>";
        }
        if( ($fila['id']+1) <= $this->Peliculas_model->num_filas_Peliculas($fila['tipo'])){
            echo "<a href='".base_url()."index.php/Peliculas/consultar/1/".($fila['id']+1)."'> <img src='".base_url()."images/siguiente.jpg' height=50 width=50> </a>";
        }
        echo "</div>";
        echo "<br>";
        echo "<br>";
        ?>
       
 	
		



</body>
</div>