<br><br>
<h2><center>Agrega una nueva película. </center></h2>
<h5><center>Confiamos en tí. </center></h5>
 <?php echo form_open("index.php/Peliculas/agregada"); ?>
  <br>
  <center><label for="titulo">Título:</label>
  <input type="text" id="titulo" name="titulo" /></center>
  <br>
  <center><label for="imagen">URL del póster:</label>
  <input type="text" id="imagen" name="imagen" /></center>
  <br>
  <center><label for="director">Director:</label>
  <input type="text" id="director" name="director" /></center>
  <br>
  <center><label for="sinopsis">Sinopsis:</label>
  <textarea name='sinopsis' id='sinopsis'></textarea></center>
  <br>
  <center><label for='tipo'>Género (al que más se acerque): </label> 
  <select name='tipo' id='tipo'> 
    <option value='1'>Gore cómico</option>
    <option value='2'>Gore terrorífico</option>
    <option value='3'>Argumento surrealista</option>
    <option value='4'>Asesinos peculiares</option>
    <option value='5'>Clásicos de Serie B</option>
   </select> </center>
  <br>


  <center><input type="submit" class="greenButton" value="Enviar" /></center>
  <br>
 <?php echo form_close(); ?>