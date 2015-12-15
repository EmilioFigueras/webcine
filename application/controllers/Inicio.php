<?php
class Inicio extends CI_Controller {
	function index()
	{
		//Cargar helper url que tiene funciones para trabajo con URL
		$this->load->helper('url');

		//Cargo la vista pasandole los datos de configuracion
		$this->load->view('cabecera');
		$this->load->view('inicio');
		$this->load->view('pie');
	}
}
?>