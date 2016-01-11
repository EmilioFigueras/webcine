<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Contact extends CI_Controller {
	public function __construct()
 	{
  		parent::__construct();
  		$this->load->model('Contact_model');
 	}

 	function index()
	{

		//Cargo la vista pasandole los datos de configuracion
		$this->load->view('cabecera');
		$this->load->view('contact');
		$this->load->view('pie');
	}
 }
?>