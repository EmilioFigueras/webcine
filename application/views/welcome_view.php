<header class="carousel slide">
<div class="content">
	<h2>a</h2>
  <h2>Bienvenido, <?php echo $this->session->userdata('user_name'); ?>!</h2>
  <p>Ahora estas logueado, puedes puntuar y añadir nuevas películas.</p>
  <h4><?php echo anchor('index.php/User/logout', 'Cerrar sesión'); ?></h4>
</div><!--<div class="content">-->
</header>