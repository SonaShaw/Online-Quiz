<?php
session_start();



class user{
	public $host = "localhost";
	public $username = "root";
	public $pass = "";
	public $db_name = "reception1";
	public $conn;
	public $candidate;
	public $question;
	
	
	
	// create connection to database when object of this constructor will be created.
	// this is basically a constructor for creating the connection to database.
	public function __construct(){
		$this->conn = new mysqli($this->host,$this->username,$this->pass,$this->db_name);
		
		if($this->conn->connect_errno){
			die("database connection failed".$this->conn->connect_errno);
		}
		
	}
	
	// insert data to the database. $data is query as parameter.
	public function register($data){
		$this->conn->query($data);
		return true;
	}
	
	// check login credential
	public function login($email,$pass){
		$query = $this->conn->query("select email, password from candidate_login where email='$email' and password='$pass'");
		$query->fetch_array(MYSQLI_ASSOC);
		if($query->num_rows>0){
			$_SESSION['email'] = $email;
			
 			return true;
		}else{
			return false;
		}
	}
	
	// function to return array of candidate consisting all information from candidate table who were registered on the current date.
	public function show_candidate(){
		// set the timezone first
		if(function_exists('date_default_timezone_set')) {
			date_default_timezone_set("Asia/Kolkata");
		}
		$date = date("Y-m-d");
		$query = $this->conn->query("select * from candidate where register_date='$date'");
		
		while($row = $query->fetch_array(MYSQLI_ASSOC)){
			$this->candidate[] = $row;
			
		}
		return $this->candidate;
		
	}
	
	// fetch question for basic, advance and professional levels.
	
	public function fetch_basic_question_set(){
		
		$query = $this->conn->query("select * from question_bank where cat_id = ".$_SESSION["cat"]." and level_id = ".$_SESSION["level"]." order by rand() limit 10");
		
		while($row = $query->fetch_array(MYSQLI_ASSOC)){
			$this->question[] = $row;
			
		}
		return $this->question;
		
	}
	
	// match answer for basic, advance and professional level.
	
	public function check_answer($id,$ans){
		
		$query = $this->conn->query("select qid, correctanswer from question_bank where qid='$id' and correctanswer='$ans'");
		$query->fetch_array(MYSQLI_ASSOC);
		if($query->num_rows>0){	
 			return true;
		}else{
			return false;
		}
		
	}
	
	// fetch question for intermediate level 
	
	public function fetch_intermediate_question_set($cat_id){
		
		$query = $this->conn->query("select * from question_bank where cat_id = '$cat_id' and level_id = 1 order by rand() limit 5 " );
		
		while($row = $query->fetch_array(MYSQLI_ASSOC)){
			$this->question[] = $row;
			
		}
		$query = $this->conn->query("select * from question_bank where cat_id = '$cat_id' and level_id = 2 order by rand() limit 5 " );
		
		while($row = $query->fetch_array(MYSQLI_ASSOC)){
			$this->question[] = $row;
			
		}
		shuffle($this->question);
		return $this->question;
		
	}
	
	public function set_session($cnumber,$name,$dept,$profile,$set){
		$_SESSION["cnum"] = $cnumber;
		$_SESSION["name"] = $name;
		$_SESSION["department"] = $dept;
		$_SESSION["profile"] = $profile;
		$_SESSION["qset"] = $set;
		
		
	}
	
	public function set_session_for_catagory_and_level($cat,$level){
		$_SESSION["cat"] = $cat;
		$_SESSION["level"] = $level;
	}
	
	public function clear_session(){
		session_destroy();
	}
	
	public function url($url){
		header("location:".$url);
	}
}
?>