<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="footer, links, icons" />
    <meta name="description" content="">
    <meta name="author" content="">

	<link rel="stylesheet" href="<?php echo base_url();?>css/footer-distributed.css">
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css">

</head>
	<footer class="footer-distributed">

		<div class="footer-right">

			<a href="#"><i class="fa fa-facebook"></i></a>
			<a href="#"><i class="fa fa-twitter"></i></a>
			<a href="#"><i class="fa fa-linkedin"></i></a>
			<a href="#"><i class="fa fa-github"></i></a>
		</div>
		<div class="footer-left">
			<p class="footer-links">
				<a href="<?php echo base_url(); ?>">Home</a>
					·
				<a href="<?php echo base_url(); ?>index.php/About">About</a>
					·
				<a href="<?php echo base_url(); ?>index.php/Contact">Contact</a>
			</p>

			<p>Webcine &copy; 2015</p>
		</div>

	</footer>


    <!-- jQuery -->
    <script type="text/javascript" src="<?php echo base_url();?>js/jquery.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
   		// Muestra y oculta los menús
   		$('ul li:has(ul)').hover(
      		function(e)
      		{
         		$(this).find('ul').css({display: "block"});
      		},
      		function(e)
      		{
         		$(this).find('ul').css({display: "none"});
      		}
   		);
	});


	//Votar
	$(document).ready(function(){

     $("#votar").click(function(){
        
        voto=$("#voto").val();
        opinion=$("#opinion").val();
        idUsuario=$("#idUsuario").val();
        idPelicula=$("#idPelicula").val();

        if(voto!="" && opinion!=""){

           $.ajax({url:"<?php echo base_url().'index.php/Peliculas/votar'; ?>",type:'POST',data:{voto:voto,opinion:opinion, idUsuario:idUsuario, idPelicula:idPelicula},success:function(result){
            $("#mens").html(result);

          }});

        }else{

         $("#mens").html("Escriba una breve opinión");

        }

     });

   });

	//Actualizar el voto
	$(document).ready(function(){

     $("#modificar").click(function(){
        
        voto=$("#voto").val();
        idUsuario=$("#idUsuario").val();
        idPelicula=$("#idPelicula").val();

        $.ajax({url:"<?php echo base_url().'index.php/Peliculas/actualizar'; ?>",type:'POST',data:{voto:voto, idUsuario:idUsuario, idPelicula:idPelicula},success:function(result){
            $("#mens").html(result);

          }});

     });

   });
	</script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo base_url();?>js/bootstrap.min.js"></script>
</html>
