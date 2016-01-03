<br><br>
<h2>Agrega una nueva película. </h2>
<h5>Confiamos en tí. </h5>
 <?php echo form_open("index.php/Peliculas/agregada"); ?>
  <br>
  <label for="titulo">Título:</label>
  <input type="text" id="titulo" name="titulo" />
  <br>
  <label for="imagen">URL del póster:</label>
  <input type="text" id="imagen" name="imagen" />
  <br>
  <label for="director">Director:</label>
  <input type="text" id="director" name="director" />
  <br>
  <label for="sinopsis">Sinopsis:</label>
  <textarea name='sinopsis' id='sinopsis'></textarea>
  <br>
  <label for='tipo'>Género (al que más se acerque): </label> 
  <select name='tipo' id='tipo'> 
    <option value='1'>Gore cómico</option>
    <option value='2'>Gore terrorífico</option>
    <option value='3'>Argumento surrealista</option>
    <option value='4'>Asesinos peculiares</option>
    <option value='5'>Clásicos de Serie B</option>
   </select> 
  <br>


  <input type="submit" class="greenButton" value="Enviar" />
  <br>
 <?php echo form_close(); ?>