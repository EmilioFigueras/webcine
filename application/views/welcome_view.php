<header class="carousel slide">
<div class="content">
	<h2>a</h2>
  <h2>Bienvenido, <?php echo $this->session->userdata('user_name'); ?>!</h2>
  <p>This section represents the area that only logged in members can access.</p>
  <h4><?php echo anchor('index.php/User/logout', 'Cerrar sesión'); ?></h4>
</div><!--<div class="content">-->
</header>