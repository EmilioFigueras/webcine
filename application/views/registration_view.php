<br><br>
<div>

 <center><h2>Iniciar sesión: </h2></center>
 <?php echo form_open("index.php/User/login"); ?>
 <br>
  <center><label for="email">Email:</label>
  <input type="text" id="email" name="email" value="" /></center>
  <br>
  <center><label for="password">Contraseña:</label>
  <input type="password" id="pass" name="pass" value="" /></center>
  <br>
  <center><input type="submit" class="" value="Entrar" /></center>
 <?php echo form_close(); ?>


<center><h2>Registrarte: </h2></center>
<center><h5>Es gratis y rápido </h5></center>
 <?php echo validation_errors('<p class="error">'); ?>
 <?php echo form_open("index.php/User/registration"); ?>
  <br>
  <center><label for="user_name">Nombre de usuario:</label>
  <input type="text" id="user_name" name="user_name" value="<?php echo set_value('user_name'); ?>" /></center>
  <br>
  <center><label for="email_address">Email:</label>
  <input type="text" id="email_address" name="email_address" value="<?php echo set_value('email_address'); ?>" /></center>
  <br>
  <center><label for="password">Contraseña:</label>
  <input type="password" id="password" name="password" value="<?php echo set_value('password'); ?>" /></center>
  <br>
  <center><label for="con_password">Confirmar contraseña:</label>
  <input type="password" id="con_password" name="con_password" value="<?php echo set_value('con_password'); ?>" /></center>
  <br>
  <center><input type="submit" class="greenButton" value="Registrarte" /></center>
  <br>
 <?php echo form_close(); ?>
</div>
<br><br>