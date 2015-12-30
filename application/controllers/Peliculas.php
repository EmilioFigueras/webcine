<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Peliculas extends CI_Controller {
	public function __construct()
 	{
  		parent::__construct();
  		$this->load->model('Peliculas_model');
 	}
	public function index($tipo)
	{
		
	}
	public function consultar($tipo)
	{
		$data['consulta'] = $this->Peliculas_model->consultar($tipo);
		$this->load->view('cabecera');
		$this->load->view('peliculas', $data);
		$this->load->view('pie');
	}

}
?>