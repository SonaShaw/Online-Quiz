<?php

	include("../class/user.php");
	$next_page = new user;
	
	
	

if(isset($_POST['nextButton'])){
	if($_SESSION["qset"] == "Basic")
		$next_page->url("../quiz/basic/basic_accounting_quiz.php");
	else if($_SESSION["qset"] == "Intermediate")
		$next_page->url("../quiz/intermediate/intermediate_accounting_quiz.php");
	else if($_SESSION["qset"] == "Advanced")
		$next_page->url("../quiz/advanced/advance_accounting_quiz.php");
	else if($_SESSION["qset"] == "Professional")
		$next_page->url("../quiz/professional/professional_accounting_quiz.php");
	
}
					
?>

<!doctype html>
<html>
	<head>
		<title>page3</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		<style>
		table, th, td{
 
  border-collapse: collapse;
 
  padding-left : 10px;
  padding-right: 10px;
  padding-top : 10px;
  padding-bottom : 10px;
  border-spacing: 30px;
   
}





table{
width : 100%;
}

.hr
{
    list-style-type: none;
    /*margin: 0;
    padding: 0;*/
}
		</style>
		
		
	</head>
	<body>
	<br>

	<div id="container" align="center" >
		<img src="img/cis.jpg" alt=""  width = "160" height = "75" />
	</div>
	<br>
	
	<div class="container">
	<div class="row">
		<div class = "col-sm-12">
			<div class="panel panel-primary">
				<div class="panel-heading" align = "center" style="background-color:#081450;">
					<font face = "Times New Roman">
						<h3>Welcome to Cloud Infosolutions</h3>
					</font>
				</div>	
			</div>	
		</div>
	</div>
	</div>	<br>
	
	<div class="container">
	<div class="row">
		<div class = "col-sm-12">
		
			
			<span><p id ="name" ><font face = "times new roman"> Dear   <?php  echo $_SESSION['name'].","//.$_SESSION['qset']."  ".$_SESSION['department']."  ".$_SESSION['profile']; ?>
			</font></p></span>
			<p><font face = "times new roman">It is a pleasure to have you interview with us. We would like to know a little bit more about you. Please fill out
			the questionnaire in the next screen. Further, to ensure your fit with our company, we need to take a screening test that will test you on the core 
			skills that you have gained since you embarked on your career. If you clear the screening test, we will take your first round of interview.</font></p>
			<br>
			<div>
				<table class = "outer">
					<col width="650">
					<col width="350">
					<tr class = "row1">
						<div>
						<td class = "col1">
							<p><font face = "times new roman">Instructions for the screening test:</font></p>
							<p><font face = "times new roman">
							<ul>
								<li>You have to solve Multiple Choice Questions for Accounting, English & Math.</li>
								<li>In the Excel test, you have to use formulae or functions to solve the cases given.</li>
								<li>You have 10 minutes to complete the Typing Test. Once you press any keystroke.</li>
							</ul> 
							</font></p>
							
							<p><font face = "times new roman">The table in the right shows the questions breakup in the test.</font></p>
							<p><font face = "times new roman">All the very best for the test.</font></p>
							
							<div class = "hr">
								<li><font face = "times new roman">Regards,</font></li>
								<li><font face = "times new roman">Juhi Kothari, </font></li>
								<li><font face = "times new roman">HR-Head, Cloud Infosolutions</font></li>
							</div>
							
							<br>
						</td>
						<td class = "col2">
							<table class = "inner" style = " border: 1px solid black;text-align:center;" >
							<col width = "100">
							<col width = "100">
							<col width = "100">
								<tr style = " border: 1px solid black" >
									<td style = " border: 1px solid black" >
										<font face = "times new roman"><b>Subject <b></font>
									</td>
									<td style = " border: 1px solid black">
										<font face = "times new roman"><b>Question <b></font>
									</td style = " border: 1px solid black">
									<td style = " border: 1px solid black">
										<font face = "times new roman"><b>Time<b></font>
									</td>
								</tr>
								<tr style = " border: 1px solid black">
									<td style = " border: 1px solid black;text-align:left;">
										<font face = "times new roman">Accounting </font>
									</td>
									<td style = " border: 1px solid black">
										<font face = "times new roman">20</font>
									</td>
									<td style = " border: 1px solid black">
										<font face = "times new roman">20</font>
									</td>
								</tr>
								<tr style = " border: 1px solid black">
									<td style = " border: 1px solid black;text-align:left;">
										<font face = "times new roman">English</font>
									</td>
									<td style = " border: 1px solid black">
										<font face = "times new roman">10</font>
									</td>
									<td style = " border: 1px solid black">
										<font face = "times new roman">10</font>
									</td>
								</tr>
								<tr style = " border: 1px solid black">
									<td style = " border: 1px solid black;text-align:left;">
										<font face = "times new roman">Aptitude</font>
									</td>
									<td style = " border: 1px solid black">
										<font face = "times new roman">10</font>
									</td>
									<td style = " border: 1px solid black">
										<font face = "times new roman">10</font>
									</td>
								</tr>
								<tr style = " border: 1px solid black">
									<td style = " border: 1px solid black;text-align:left;">
										<font face = "times new roman">Excel </font>
									</td>
									<td style = " border: 1px solid black">
										<font face = "times new roman">7</font>
									</td>
									<td style = " border: 1px solid black">
										<font face = "times new roman">20</font>
									</td>
								</tr>
								<tr style = " border: 1px solid black">
									<td style = " border: 1px solid black;text-align:left;">
										<font face = "times new roman">Typing</font>
									</td>
									<td style = " border: 1px solid black">
										<font face = "times new roman">1</font>
									</td>
									<td style = " border: 1px solid black">
										<font face = "times new roman">10</font>
									</td>
								</tr>
							</table>
							
						</td>
						</div>
					</tr>
					
				</table>
				
				
				<br>
				
			</div>
			<form method="post" action="#">
			<div align = "center">
					<button type="submit" name = "nextButton" class="btn btn-default"  style="width: 100px; height: 45px;""><font face = "Times New Roman" size="4"><b>NEXT</b></font></button>
				</div>
			</form>
		</div>
	</div>
	</div>	
	
	</body>
</html>