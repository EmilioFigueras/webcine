<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Peliculas_model extends CI_Model {
 public function __construct()
 {
  parent::__construct();
 }

 public function consultar($tipo, $id){
 	$this->db->select('id, titulo, imagen, director, sinopsis, tipo');
 	$this->db->from('Peliculas');
 	if($id!=0)
 		$this->db->where('id', $id);
 	$this->db->where('tipo', $tipo);
 	$consulta = $this->db->get();

 	return $consulta;
 }

 public function num_filas_Peliculas($tipo){
 	$this->db->select('id');
 	$this->db->from('Peliculas')->where('tipo', $tipo);
 	$consulta = $this->db->get();
 	$contador=0;
 	foreach ($consulta->result_array() as $fila){
 		$contador++;
 		if($contador==$consulta->num_rows()){
 			return $fila['id'];
 		}
 	}
 }
 public function primera_id($tipo){
 	$this->db->select('id');
 	$this->db->from('Peliculas')->where('tipo', $tipo);
 	$consulta = $this->db->get();
 	$fila = $consulta->row_array();
 	return $fila['id'];
 }

  public function siguiente_id($tipo, $id){
 	$this->db->select('id');
 	$this->db->from('Peliculas')->where('tipo', $tipo);
 	$consulta = $this->db->get();
 	$encontrado=false;
 	foreach ($consulta->result_array() as $fila){
 		if($encontrado) return $fila['id'];
 		if($fila['id']==$id){
 			$encontrado=true;
 		}
 	}
 }

  public function anterior_id($tipo, $id){
 	$this->db->select('id');
 	$this->db->from('Peliculas')->where('tipo', $tipo);
 	$consulta = $this->db->get();
 	$ultima_id=0;
 	foreach ($consulta->result_array() as $fila){
 		if($fila['id']==$id){
 			return $ultima_id;
 		}
 		$ultima_id=$fila['id'];
 	}
 }

 public function buscar_votacion($idPelicula, $idUsuario){
 	$this->db->select('puntuacion');
 	$this->db->from('Votaciones');
 	$this->db->where('id_Peliculas', $idPelicula);
 	$this->db->where('id_Usuarios', $idUsuario);
 	$consulta = $this->db->get();
 	if($consulta->num_rows() >0){
 		$fila = $consulta->row();
 		return $fila->puntuacion;
 	}
 	else return -1;

 }

 public function nota_media($idPelicula){
 	$this->db->select_avg('puntuacion');
 	$this->db->from('Votaciones');
 	$this->db->where('id_Peliculas', $idPelicula);
 	$consulta = $this->db->get();
 	if($consulta->num_rows()>0){
 		$fila = $consulta->row();
 		return $fila->puntuacion;
 	}else return '-';
 }

 public function actualizar(){
 	$actualizacion = array(
 		'id_Peliculas' => $this->input->post('idPelicula'), 
 		'id_Usuarios' => $this->input->post('idUsuario'),
 		'puntuacion' => $this->input->post('voto')
 		);

 	$this->db->where('id_Peliculas', $this->input->post('idPelicula'));
 	$this->db->where('id_Usuarios', $this->input->post('idUsuario'));
 	$this->db->update('Votaciones', $actualizacion);
 }



 

 public function votar(){
 	$data = array(
 		'id_Peliculas' => $this->input->post('idPelicula'), 
 		'id_Usuarios' => $this->input->post('idUsuario'),
 		'puntuacion' => $this->input->post('voto'),
 		'opinion' => $this->input->post('opinion')
 		);

 	return $this->db->insert('Votaciones', $data);

 }

 public function opiniones($id){
 	$this->db->distinct('Peliculas.id');
 	$this->db->distinct('Votaciones.opinion');
 	$this->db->distinct('Usuarios.username');
 	$this->db->from('Peliculas');
 	$this->db->from('Votaciones');
 	$this->db->from('Usuarios');
 	$this->db->where('Votaciones.id_Peliculas', $id);
 	$this->db->where('Peliculas.id = Votaciones.id_Peliculas');
 	$this->db->where('Usuarios.id = Votaciones.id_Usuarios');

 	$consulta = $this->db->get();

 	return $consulta;

 }

 public function agregar_pelicula(){
 	$peli=array(
 		'titulo' => $this->input->post('titulo'),
 		'imagen' => $this->input->post('imagen'),
 		'director' => $this->input->post('director'),
 		'sinopsis' => $this->input->post('sinopsis'),
 		'tipo' => $this->input->post('tipo')
 		);
 	$this->db->insert('Peliculas', $peli);

 }
}


 ?>