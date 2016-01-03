<body background="<?php echo base_url();?>images/thank1.jpg">
<header class="carousel slide">
<div id="content">
 <br>
 <h1 style="color:white">¡Gracias por registrarte!</h1>
 <br>
 <?php echo form_open("index.php/User/login"); ?>
  <label style="color:white" for="email">Email:</label>
  <input type="text" id="email" name="email" value="" />
<br>
  <label style="color:white" for="pass">Contraseña:</label>
  <input type="password" id="pass" name="pass" value="" />
<br>
<br>
  <input type="submit" class="" value="Entrar" />
 <?php echo form_close(); ?>
</div>
</header>
</body>