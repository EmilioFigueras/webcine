<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class About extends CI_Controller {
	public function __construct()
 	{
  		parent::__construct();
  		$this->load->model('About_model');
 	}

 	function index()
	{

		//Cargo la vista pasandole los datos de configuracion
		$this->load->view('cabecera');
		$this->load->view('about');
		$this->load->view('pie');
	}
 }
?>