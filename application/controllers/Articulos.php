<?php
class Articulos extends CI_Controller {
	function index()
	{
		//Cargar helper url que tiene funciones para trabajo con URL
		$this->load->helper('url');

		//Cargo el modelo
		$this->load->model('Articulo_model');

		//Pido los ultimos articulos
		$ultimosArticulos = $this->Articulo_model->dame_ultimos_articulos();

		//Creo un array con los datos de configuracion
		$datos_vista = array('rs_articulo' => $ultimosArticulos);

		//Cargo la vista pasandole los datos de configuracion
		$this->load->view('home', $datos_vista);
	}

	function muestra($id){
		//cargo el helper de url, con funciones para trabajo con URL del sitio
		$this->load->helper('url');
		//cargo el modelo de artículos
		$this->load->model('Articulo_model');
		//pido al modelo el artículo que se desea ver
		$arrayArticulo = $this->Articulo_model->dame_articulo($id);
		//compruebo si he recibido un artículo
		if (!$arrayArticulo){
			//no he recibido ningún artículo
			//voy a lanzar un error 404 de página no encontrada
			show_404();

		}else{
			//he encontrado el artículo
			//muestro la vista de la página de mostrar un artículo pasando los
			//datos del array del artículo
			$this->load->view('muestra_articulo', $arrayArticulo);
		}
	}
}
?>
