<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cine B, el otro lado del cine.</title>

    <!-- Bootstrap Core CSS -->
    <link href="<?php echo base_url();?>css/bootstrap.min.css" rel="stylesheet">

    <link href="<?php echo base_url();?>css/full-slider.css" rel="stylesheet">

    <link href="<?php echo base_url();?>css/style.css" rel="stylesheet">

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<?php echo base_url(); ?>">Inicio</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">Películas por género</a>
                        <ul>
                            <li><a href="<?php echo base_url(); ?>index.php/Peliculas/consultar/1">Gore cómico</a></li>
                            <li><a href="<?php echo base_url(); ?>index.php/Peliculas/consultar/2">Gore terrorífico</a></li>
                            <li><a href="<?php echo base_url(); ?>index.php/Peliculas/consultar/3">Argumento surrealista</a></li>
                            <li><a href="<?php echo base_url(); ?>index.php/Peliculas/consultar/4">Asesinos peculiares</a></li>
                            <li><a href="<?php echo base_url(); ?>index.php/Peliculas/consultar/5">Clásicos de Serie B</a></li>
                        </ul>
                    </li>
                    <?php 
                            if(($this->session->userdata('user_name')!=""))
                                {   
                                    echo "<li><a href=".base_url()."index.php/Peliculas/agregar>Agregar nueva película</a></li>";
                                }?>
                    
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="<?php echo base_url(); ?>index.php/User"><?php 
                            if(($this->session->userdata('user_name')!=""))
                                { 
                                    echo "Hola, ".$this->session->userdata('user_name');
                                }
                                else{
                                    echo "Login";
                                }
                                ?></a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

</body>

</html>
