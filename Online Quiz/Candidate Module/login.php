<?php

	include("class/user.php");
	$login = new user;
	extract($_POST);
	if($login->login($e,$p)){
		$login->url("page 2.php");
	}else{
		$login->url("page 1 adminLogin.php?run=failed");
		
	}
?>