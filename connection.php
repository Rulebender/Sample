<?php 
class Connection {
	public $conn;
	public $host = 'localhost';
	public $user = 'root';
	public $pass = '';
	public $database  = 'household';
	
	public function connect(){
		$this->conn = mysql_connect($this->host,$this->user,$this->pass);
	}
	
	public function close(){
		mysql_close($this->conn);
	}
	
	public function query($query){
		$this->connect();
		$data =  mysql_query($query);
		if (!$data) {
			echo mysql_error();
			exit;
		}
		return $data;
	}	
	
}
?>