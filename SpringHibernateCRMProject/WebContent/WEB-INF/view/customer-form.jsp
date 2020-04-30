<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
	<title>Save Customer</title>
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<style type="text/css">
.searchbtn{
border-radius: 10px;
}
#formField{
margin-top: 40px;
}
</style>
 </head>

<body>
	
	<div class="container">
			<h4 class="bg-info text-light">CRM - Customer Relationship Manager</h4>
	
	
	<div id="formField">
	<h4>New Customer</h4>
		<form:form action="saveCustomer" modelAttribute="customer" method="POST" autocomplete="off">

			<!-- need to associate this data with customer id -->
			<form:hidden path="id" />
					
			<%--  <table width="580px">
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><form:input path="firstName" maxlength="50"/></td>
					</tr>
				
					<tr>
						<td><label>Last name:</label></td>
						<td><form:input path="lastName" /></td>
					</tr>

					<tr>
						<td><label>Email:</label></td>
						<td><form:input path="email" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>

				
				</tbody>
			</table>
 --%> 		
 <div class="formbox">
 <div class="form-group row">
    <label for="formGroupExampleInput" class="col-md-3">First Name:</label>
    <form:input path="firstName"  class="form-control col-md-4" id="formGroupExampleInput"/>
    &nbsp;<h6 id="firstname"></h6>
  </div>
  <div class="form-group row">
    <label for="formGroupExampleInput2" class="col-md-3">Last Name:</label>
    <form:input path="lastName" class="form-control col-md-4" id="formGroupExampleInput2"/>
      &nbsp;&nbsp;  <h6 id="lastname"></h6>
    
  </div>
  <div class="form-group row">
    <label for="formGroupExampleInput3" class="col-md-3">Email:</label>
    <form:input path="email" class="form-control col-md-4" id="formGroupExampleInput3"/>
        &nbsp;<h6 id="mail"></h6>
    
  </div>
  <div>
  <button type="submit" id="submitid" class="btn btn-primary col-md-1">save</button>
  			<a href="${pageContext.request.contextPath}/customer/list" class="col-md-3 offset-md-7"><u>Back to List</u></a>
  </div>
		</div>
		</form:form>
			
		
	</div>
	</div>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  
  <script type="text/javascript">
  
  var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
  
  $(document).ready(function(){
  
 $('#firstname').hide();
  $('#lastname').hide();
  $('#mail').hide();
 
 var fname_err=true;
 var lname_err=true;
 var mail_err=true;
 
 $('#formGroupExampleInput').keyup(function(){
 	fname_check();
 });
 function fname_check(){
 var fname_val = $('#formGroupExampleInput').val();
 
 if(fname_val.length == ''){
 $('#firstname').show();
 $('#firstname').html("*please fill firstname");
 $('#firstname').css("color","red");
 fname_err=false;
 return false;
 }
 else{
  $('#firstname').hide();
 }
 
  if(fname_val.length < 3 || fname_val.length > 10){
 $('#firstname').show();
 $('#firstname').html("*field length should be between 3 and 10");
 $('#firstname').css("color","red");
 fname_err=false;
 return false;
 }
 else{
  $('#firstname').hide();
 }
 }
 
  $('#formGroupExampleInput2').keyup(function(){
 	lname_check();
 });
 
 function lname_check(){
 var lname_val = $('#formGroupExampleInput2').val();
 
 if(lname_val.length == ''){
 $('#lastname').show();
 $('#lastname').html("*please fill lasttname");
 $('#lastname').css("color","red");
 lname_err=false;
 return false;
 }
 else{
  $('#lastname').hide();
 }
 
  if(lname_val.length < 3 || lname_val.length > 10){
 $('#lastname').show();
 $('#lastname').html("*field length should be between 3 and 10");
 $('#lastname').css("color","red");
 lname_err=false;
 return false;
 }
 else{
  $('#lastname').hide();
 }
 }
 
 $('#formGroupExampleInput3').keyup(function(){
 	mail_check();
 });
 
  function mail_check(){
 var mail_val = $('#formGroupExampleInput3').val();
 
 if(mail_val.length == ''){
 $('#mail').show();
 $('#mail').html("*please fill email");
 $('#mail').css("color","red");
 mail_err=false;
 return false;
 }
 else{
  $('#mail').hide();
 }
 
  if(!(mail_val.match(mailformat))){
 $('#mail').show();
 $('#mail').html("*email should be valid");
 $('#mail').css("color","red");
 mail_err=false;
 return false;
 }
 else{
  $('#lastname').hide();
 }
 }
 
 $('#submitid').click(function(){

	fname_err=true;
  lname_err=true;
  mail_err=true;
  
  	fname_check();
  	lname_check();
    mail_check();
 if((fname_err == true) && (fname_err == true)&& (mail_err == true) ){
 	return true;
 }
 else{
 	return false;
 }
 });
 
  });
  
  </script>
</body>

</html>










