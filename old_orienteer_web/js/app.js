
$(document).ready(function(e){

var test = [
//Week 1
	{"Date": 'June 2013', Username:'Tamar Smith', Score:20},
	{"Date": 'June 2013', Username:'Jo Swiss', Score:10},
	{"Date": 'June 2013', Username:'Pete Campton', Score:17},
	{"Date": 'June 2013', Username:'Ben Lewis', Score:18},
	{"Date": 'June 2013', Username:'Louis Cotes', Score:19},
	{"Date": 'June 2013', Username:'Emma Wightman', Score:20}

];

//Email bar submit
$('#getEmail').on('click', function(e){
	//Check Email
	var userEmail =$('#userEmail').val();
	if(validateEmail(userEmail)){
		$.post("http://orienteer.it/AddUser.php",{Username:'Not known',Email:userEmail, RegistrationDate:''},function(data){});
		changeEmailBar();
	}
	else{
		alert('Please enter a valid email');

	}
})

// Populate data on results table
$.ajax({
	url:"http://orienteer.it/Leaderboards.php",
	dataType:"jsonp",
	success:function(data){
		populateTable(data);//Change argument to "test" to test

	},
	error:function(data,blah,blahhh){
		alert("Error on load");
	}
});

//Default settings for How To page
hideAll();
$('#appStore').show();
$('#googlePlay').show();

//How To page On hover event actions 
$('#one').on("hover", function(e){
	hideAll();
	$('#appStore').show();
	$('#googlePlay').show();
	$('#illustration').css('border', 'none');
	});

$('#two').on("hover", function(e){
	hideAll();
	$('#imageTwo').show();
	$('#illustration').css('border', '2px solid black');
	});

$('#three').on("hover", function(e){
	hideAll();
	$('#imageThree').show();
	$('#illustration').css('border', 'none');
	});

$('#four').on("hover", function(e){
	hideAll();
	$('#imageFour').show();
	$('#illustration').css('border', '2px solid');
	});

$('#five').on("hover", function(e){
	hideAll();
	$('#imageFive').show();
		$('#illustration').css('border', 'none');
	});


/******************************************
/* FUNCTIONS CALLED              
/*******************************************/

function validateEmail(userEmail) {
	var e = /^[-a-z0-9~!$%^&*_=+}{\'?]+(\.[-a-z0-9~!$%^&*_=+}{\'?]+)*@([a-z0-9_][-a-z0-9_]*(\.[-a-z0-9_]+)*\.(aero|arpa|biz|com|coop|edu|gov|info|int|mil|museum|name|net|org|pro|travel|mobi|[a-z][a-z])|([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}))(:[0-9]{1,5})?$/;
	if(e.test(userEmail)) {
		console.log('validateEmail true')
		return true;
	}
	else {
		console.log('validateEmail false')
		return false;
	}
}

//Function to hide everything
function hideAll(){
	$('#appStore').hide();
	$('#googlePlay').hide();
	$('#imageTwo').hide();
	$('#imageThree').hide();
	$('#imageFour').hide();
	$('#imageFive').hide();
}

//Function to populate table
function populateTable(leaderBoard){

	leaderBoard.sort(function (a,b){
		return a.Score - b.Score;
	})
	
	for (var i = 0; i < leaderBoard.length; i++) {
	    $("#resultTable").after("<tr><td>" +(leaderBoard.length-i)+"</td><td>"+leaderBoard[i].Username + "</td><td>" + leaderBoard[i].Score + "</td></tr>");
	}
}

// Function to change email bar on correct submission
function changeEmailBar(){
	$('#enterEmail').hide();
	$('#getEmail').hide()
	$('#enterText>p').hide();
	$('#enterText>h3').html('THANK YOU!');
}
	





});