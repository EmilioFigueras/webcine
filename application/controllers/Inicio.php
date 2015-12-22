<?php
class Inicio extends CI_Controller {
	function index()
	{

		//Cargo la vista pasandole los datos de configuracion
		$this->load->view('cabecera');
		$this->load->view('inicio');
		$this->load->view('pie');
	}

}
?>