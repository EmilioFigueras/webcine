<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Peliculas_model extends CI_Model {
 public function __construct()
 {
  parent::__construct();
 }

 public function consultar($tipo){
 	$this->db->select('Titulo, Imagen, Director, Sinopsis');
 	$this->db->from('pelis');
 	$this->db->where('Tipo', $tipo);
 	//$consulta = $this->db->query('SELECT Titulo, Imagen, Director, Sinopsis FROM pelis WHERE Tipo===$tipo');
 	$consulta = $this->db->get();

 	return $consulta;
 }
}


 ?>