<header class="carousel slide">
<div>
	<h2>a</h2>
  <h2><center>Bienvenido, <?php echo $this->session->userdata('user_name'); ?>!</center></h2>
  <p><center>Ahora estas logueado, puedes puntuar y añadir nuevas películas.</center></p>
  <h4><center><?php echo anchor('index.php/User/logout', 'Cerrar sesión'); ?></center></h4>
</div><!--<div class="content">-->
</header>