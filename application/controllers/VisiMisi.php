<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class VisiMisi extends CI_Controller {
	
	function __construct(){
		parent::__construct();
		
	}
 
	public function index(){
		$this->load->view('depan/v_visi_misi');
	}
 
}