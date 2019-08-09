<?php
	include("../../class/user.php");
?>
	
	
	
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Receptionist</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style>

.timer{
	width:200px;
	height:50px;
	float:right;
	text-align:center; 
	border:4px solid #081450;
	border-radius:10px
	
}

</style>
  
</head>


<body onload = "timeOut()">

<br>
<div id="container" align="center" >
    <img src="img/cis.jpg" alt=""  width = "160" height = "75" />
</div>



<div class="container" >
	<div class="row">
	<div class = "col-sm-12">
		<div>
			<span class = "timer" >
				<td><font size = "5"><b><p id="demo"></p><b></font></td>
			</span>
		</div>
	</div>
	
	<div class = "col-sm-12">
		<br>
		
		<div align = "right">
		
		</div>
		<form action="advance_accounting_answer.php" method="POST" id = "submit-test">
		<div class="panel panel-primary" >
			
			<?php
				$mcq = new user;
				$catagory_id = 1;
				$level_id = 2;
				$mcq->set_session_for_catagory_and_level($catagory_id,$level_id);
				$mcq->fetch_basic_question_set();
				$i=1;				
				foreach($mcq->question as $q)
				{
			?>	
				<div class = "panel-heading"  style="background-color:#081450;">
				<table>
				<col width="100">
				<col width="900">
					<tr valign = "top">
						<td align = "top">
							<font color="white" face = "Times New Roman"><b><h4>Question <?php echo  $i; ?>:</h4></b></font>
						</td>
						<td>
							<font color="white" face = "Times New Roman"><b><h4><?php echo nl2br($q["statement"]); ?></h4></b></font>
						</td>
					</tr>
				
				
				</table>
				</div>	
				<div class = "panel-body">
					
					
					<?php if(isset($q["answer1"])){ ?>
					<input type="radio" name="<?php echo $q["qid"] ?>" value="1"/><?php echo nl2br($q["answer1"]); ?><br/>
					<?php } ?>
					<?php if(isset($q["answer1"])){ ?>
					<input type="radio" name="<?php echo $q["qid"] ?>" value="2"/><?php echo nl2br($q["answer2"]); ?><br/>
					<?php } ?>
					<?php if(isset($q["answer1"])){ ?>
					<input type="radio" name="<?php echo $q["qid"] ?>" value="3"/><?php echo nl2br($q["answer3"]); ?><br/>
					<?php } ?>
					<?php if(isset($q["answer1"])){ ?>
					<input type="radio" name="<?php echo $q["qid"] ?>" value="4"/><?php echo nl2br($q["answer4"]); ?>
					<?php } ?>
					<input type="radio" checked = "checked" style = "visibility:hidden" name="<?php echo $q["qid"] ?>" value="not attemt"/>
				</div>
				
				<?php  

					$i++;
				}  ?> 
	
		</div>
		<div align = "center">
				<button type="submit"  class="btn btn-default" style="width: 100px; height: 45px;"><font face = "Times New Roman" size="4"><b>SUBMIT</b></font></button>
		</div>
		</form>
		<br><br>
	</div>
	</div>
</div>

<script src = "../js/quiz.js" type = "text/javascript"></script>


</body>
</html>
