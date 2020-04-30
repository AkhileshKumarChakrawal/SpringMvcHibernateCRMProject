<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
	<title>Update Customer</title>
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
	<h4>Update Customer</h4>
		<form:form action="saveCustomer" modelAttribute="customer" method="POST">

			<!-- need to associate this data with customer id -->
			<form:hidden path="id" />
					 
 <div class="formbox">
 <div class="form-group row">
    <label for="formGroupExampleInput" class="col-md-3">First Name:</label>
    <form:input path="firstName"  class="form-control col-md-4" id="formGroupExampleInput"/>
    <h5 id="firstname"></h5>
  </div>
  <div class="form-group row">
    <label for="formGroupExampleInput2" class="col-md-3">Last Name:</label>
    <form:input path="lastName" class="form-control col-md-4" id="formGroupExampleInput2"/>
        <h5 id="lastname"></h5>
    
  </div>
  <div class="form-group row">
    <label for="formGroupExampleInput3" class="col-md-3">Email:</label>
    <form:input path="email" class="form-control col-md-4" id="formGroupExampleInput3"/>
        <h5 id="mail"></h5>
    
  </div>
  <div>
  <button type="submit" id="submitid" class="btn btn-primary col-md-1">update</button>
  			<a href="${pageContext.request.contextPath}/customer/list" class="col-md-3 offset-md-7"><u>Back to List</u></a>
  </div>
		</div>
		</form:form>
		
	</div>
	</div>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  
</body>
</html>