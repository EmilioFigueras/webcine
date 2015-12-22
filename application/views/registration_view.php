<header class="carousel slide">
<div id="content">

 <h2>Iniciar sesión: </h2>
 <?php echo form_open("index.php/User/login"); ?>
  <label for="email">Email:</label>
  <input type="text" id="email" name="email" value="" />
  <label for="password">Contraseña:</label>
  <input type="password" id="pass" name="pass" value="" />
  <input type="submit" class="" value="Sign in" />
 <?php echo form_close(); ?>


<h2>Registrarte: </h2>
<h5>Es gratis y rápido </h5>
 <?php echo validation_errors('<p class="error">'); ?>
 <?php echo form_open("index.php/User/registration"); ?>
  <p>
  <label for="user_name">Nombre de usuario:</label>
  <input type="text" id="user_name" name="user_name" value="<?php echo set_value('user_name'); ?>" />
  </p>
  <p>
  <label for="email_address">Email:</label>
  <input type="text" id="email_address" name="email_address" value="<?php echo set_value('email_address'); ?>" />
  </p>
  <p>
  <label for="password">Contraseña:</label>
  <input type="password" id="password" name="password" value="<?php echo set_value('password'); ?>" />
  </p>
  <p>
  <label for="con_password">Confirmar contraseña:</label>
  <input type="password" id="con_password" name="con_password" value="<?php echo set_value('con_password'); ?>" />
  </p>
  <p>
  <input type="submit" class="greenButton" value="Submit" />
  </p>
 <?php echo form_close(); ?>
</header>
