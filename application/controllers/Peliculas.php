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
	public function consultar($tipo, $id=0)
	{
		$data['consulta'] = $this->Peliculas_model->consultar($tipo, $id);
		$this->load->view('cabecera');
		$this->load->view('peliculas', $data);
		$this->load->view('pie');
	}

	public function votar(){
		$this->Peliculas_model->votar();
		echo 'Votado correctamente';
	}

	public function actualizar(){
		$this->Peliculas_model->actualizar();
		echo 'Voto actualizado';


	}

	public function opiniones($id){
		$data['opiniones'] = $this->Peliculas_model->opiniones($id);
		$this->load->view('cabecera');
		$this->load->view('opiniones_view', $data);
		$this->load->view('pie');
	}

	public function agregar(){
		$this->load->view('cabecera');
		$this->load->view('agregar_view');
		$this->load->view('pie');

	}

	public function agregada(){
		$this->Peliculas_model->agregar_pelicula();
		$this->load->view('cabecera');
		$this->load->view('agregada_view');
		$this->load->view('pie');
	}


}
?>