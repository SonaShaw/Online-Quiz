<?php
session_start();
class user{
	public $host = "localhost";
	public $username = "root";
	public $pass = "";
	public $db_name = "reception1";
	public $conn;
	
	
	public function __construct(){
		$this->conn = new mysqli($this->host,$this->username,$this->pass,$this->db_name);
		if($this->conn->connect_errno){
			die("database connection failed".$this->conn->connect_errno);
		}
	}
	public function register($data){
		$this->conn->query($data);
		return true;
	}
	
	public function login($email,$pass){
		$query = $this->conn->query("select email, password from signup where email='$email' and password='$pass'");
		$query->fetch_array(MYSQLI_ASSOC);
		if($query->num_rows>0){
			$_SESSION['email'] = $email;
			return true;
		}else{
			return false;
		}
	}
	
	public function url($url){
		header("location:".$url);
	}
}
?>