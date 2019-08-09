function showtxtbox(s1,s2){
	var s1 = document.getElementById(s1);
	var s2 = document.getElementById(s2);
	if(s1.value == "Others"){
		s2.style.visibility = 'visible';
	}else{
		s2.style.visibility = 'hidden';
	}
	
}

function showsiblings(s1,s2,s3,s4){
	var s1 = document.getElementById(s1);
	var s2 = document.getElementById(s2);
	var s3 = document.getElementById(s3);
	var s4 = document.getElementById(s4);
	var x = s1.checked;
	var y = s2.checked;
	if(x == true){
		s3.style.visibility = 'visible';
		s4.style.visibility = 'visible';
	}else if(y == true){
		s3.style.visibility = 'hidden';
		s4.style.visibility = 'hidden';
	}
	
}

function showSpouseDetails(s1,s2,s3){
	var s1 = document.getElementById(s1);
	var s2 = document.getElementById(s2);
	var s3 = document.getElementById(s3);
	if(s1.value == "Married"||s1.value == "Separated"||s1.value == "Divorced"||s1.value == "Widowed" ){
		s2.style.visibility = 'visible';
		s3.style.visibility = 'visible';
	}else{
		s2.style.visibility = 'hidden';
		s3.style.visibility = 'hidden';
	}
}

function showChild(s1,s2,s3,s4,s5){
	var s1 = document.getElementById(s1);
	var s2 = document.getElementById(s2);
	var s3 = document.getElementById(s3);
	var s4 = document.getElementById(s4);
	var s5 = document.getElementById(s5);
	var x = s1.checked;
	var y = s2.checked;
	if(x == true){
		s3.style.visibility = 'visible';
		s4.style.visibility = 'visible';
		s5.style.visibility = 'hidden';
	}else if(y == true){
		s3.style.visibility = 'hidden';
		s4.style.visibility = 'hidden';
		s5.style.visibility = 'visible';
	}	
}

// funtion for 2 radio button and one span

function showSpanOnRadio(s1,s2,s3){
	var s1 = document.getElementById(s1);
	var s2 = document.getElementById(s2);
	var s3 = document.getElementById(s3);
	var x = s1.checked;
	var y = s2.checked;
	if(x == true){
		s3.style.visibility = 'visible';
		
	}else if(y == true){
		s3.style.visibility = 'hidden';
		
	}	
	
}


const start = getElementById("start");
const quiz = getElementById("quiz");
const question = getElementById("question");
const choiceA = getElementById("A");
const choiceB = getElementById("B");
const choiceC = getElementById("C");
const choiceD = getElementById("D");
const nextButton = getElementById("next");
