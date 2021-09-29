<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
<script>
jQuery(document).ready(function($) {

	$("#submit").click(function(){
		var developerData = {};
		
		developerData["fname"] = $("#fname").val();
		developerData["date"] = $("#date").val();
		developerData["age"]=$("#age").val();
		developerData["gender"]=$("#gender").val();
		developerData["email"]=$("#email").val();
		developerData["myfile"]=$("#myfile").val();
	
		$.ajax({
			
			type : "POST",
			contentType : "application/json",
			url : "saveUser",
			data : JSON.stringify(developerData),
			dataType : 'json',				
			
			success : function(data) {
				console.log(developerData);
			}
		});
	});

});


	 var listOfObjects = [];
	 
     function calcAge() {
    	 
    	  var today = new Date();
	      givenDate = new Date(today);
	      var dt1 = document.getElementById('date').value;
	      var birthDate = new Date(dt1);
	      var years = (givenDate.getFullYear() - birthDate.getFullYear());
	
	      if (givenDate.getMonth() < birthDate.getMonth() ||
	   			givenDate.getMonth() == birthDate.getMonth() && givenDate.getDate() < birthDate.getDate()) {
	          		years--;
	      }
	      
	    
	      document.myform.age.value = years+" years";
 	 }
     
     function display() {
    	
    	  message = "<ul><li><b>NAME: </b>" + document.myform.fname.value;
    	  message += "<li><b>DOB: </b>" + document.myform.date.value;
    	  message += "<li><b>Age: </b>" + document.myform.age.value;
    	  message += "<li><b>Gender: </b>" + document.myform.gender.value;
    	  message += "<li><b>E-mail: </b>" + document.myform.email.value;
    	  message += "<li><b>File: </b>" + document.myform.myfile.value + "</ul>";
    	  
       	  listOfObjects.push(message);    	  
    	  document.getElementById("namev").innerHTML+=message+" ";
     }
     
    </script>
	
</head>
<body>

<h2>Details</h2>
<form name="myform" id="myform" action="saveUser" method="post">
	<table id="tables" cellspacing="5">
    	<tr>
    		<td>Full Name:</td>
    		<td><input type="text" name="fname" id="fname" value=""/></td>
    	</tr>
    	<tr>
    		<td>Date Of Birth:</td>
    		<td><input type="date" name="date" id="date" value="" onchange="calcAge()" /></td>
    	</tr>
    	<tr>
    		<td>Age:</td>
    		<td><input type="text" id="age" name="age" value="" readonly/></td>
    	</tr>
    	<tr>
    		<td>Gender:</td>
    		<td><select name="gender" id="gender">
			  	<option value="">Select</option>
			    <option value="male">Male</option>
			    <option value="female">Female</option>
			    </select></td>
		</tr>
		<tr>
    		<td>E-mail:</td>
    		<td><input type="email" id="email" name="email" value=""></td>
    	</tr>
    	<tr>
    		<td>Select a file:</td>
    		<td><input type="file" id="myfile" name="myfile"><br><br></td>
    	</tr>
    	
    	<tr/>
    	<tr>
    		<td colspan="2" align="center"><input type="button" id="submit" value="Submit" /></td>
    	</tr>
 	</table>
	<span id="namev"></span>
</form>

</body>
</html>