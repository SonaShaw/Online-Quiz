<?php

include("class/user.php");


$next_page = new user;

if(isset($_POST['goToWelcomePage'])){
	
	$info = $_POST['department'];
	$dept = explode(" - ",$info);
	//echo $dept[2];
	
	$cnum = $dept[0];
	$name = $dept[1];
	$dept_name = $dept[2];
	$profile = $dept[3];
	$set = $dept[4];
	$next_page -> set_session($cnum,$name,$dept_name,$profile,$set);
	
	if($dept_name == "Accounting"){
		$next_page->url("Welcome Screen/accounting welcome.php");
	}else if($dept_name == "HR"){
		$next_page->url("Welcome Screen/HR welcome.php");
	}else if($dept_name == "Admin"){
		$next_page->url("Welcome Screen/Admin welcome.php");
	}else{
		$message = "Please select candidate to continue";
		echo "<script>
				alert('$message'); 
				window.location.href='page 2.php'; 
			</script>";
	}
	
}

?>

<!doctype html>


<html>
	<head>
		<title>page2</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		<style>
		select {
        width: 150px;
        margin: 10px;
		}
		select:focus {
        max-width: 500px;
        width: auto;
		}
		</style>

	</head>
	<body>
	<br>
	<div id="container" align="center" >
		<img src="img/cis.jpg" alt=""  width = "160" height = "75" />
	</div>
	<br>
	
<div class="container" >
	<div class="row">
	<div class = "col-sm-3" style = "visibility:hidden">
		<br>
		<div class="panel panel-primary" >
			
		</div>
	</div>
	
	
	<div class = "col-sm-6">
		<br>
		<div class="panel panel-primary" >
			<div class = "panel-heading" align = "center" style="background-color:#081450;"><font face = "Times New Roman"><h3><b>Select Candidate</b></h3></font>
			</div>
			<div class = "panel-body">
			
			
			
			<form action="#" method="post">
			
				<div align = "center">
					<div>
						<p id = "date"><font face = "times new roman"><?php
							if(function_exists('date_default_timezone_set')) {
							date_default_timezone_set("Asia/Kolkata");
							}
							//echo date("l j  F Y ")
							echo date("l j  F Y "); ?>
							</font>
						</p>
					</div>
				<div>
				<select ID = "department" name = "department">
					<OPTION value = "">Select Candidate</option>
			
					<?php
					
					$candidate_info = new user;
					$candidate_info->show_candidate();
					
					foreach($candidate_info->candidate as $candi)
					{
					?>
				 
				
					<OPTION ><?php echo $candi['cnum']." - ".$candi['name']." - ".$candi['department']." - ".$candi['profile']." - ".$candi['q_set']." - ".$candi['register_time']; ?></option>
				
					<?php   }  ?> 				
				</select>
				</div>
		
				</div>
				<br>
				<div align = "center">
					<button type="submit" name = "goToWelcomePage" class="btn btn-default" style="width: 100px; height: 45px;""><font face = "Times New Roman" size="4"><b>NEXT</b></font></button>
				</div>
			</form>
			
			</div>
		</div>
	</div>
	</div>
</div>

</body>
</html>
