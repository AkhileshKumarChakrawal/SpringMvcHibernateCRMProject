<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
	<title>Save Customer</title>
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	
 </head>

<body>
	
	
			<h1 class="text-center">Customer Relationship Manager</h1>
	
	<div class="container-fluid">
	
		<form:form action="saveCustomer" modelAttribute="customer" method="POST">

			<!-- need to associate this data with customer id -->
			<form:hidden path="id" />
					
			<%-- <table>
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><form:input path="firstName" /></td>
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
 
 <div class="form-group">
    <label for="formGroupExampleInput">First Name</label>
    <form:input path="firstName" class="form-control" id="formGroupExampleInput"/>
  </div>
  <div class="form-group">
    <label for="formGroupExampleInput2">Last Name</label>
    <form:input path="lastName" class="form-control" id="formGroupExampleInput2"/>
  </div>
  <div class="form-group">
    <label for="formGroupExampleInput3">Email</label>
    <form:input path="email" class="form-control" id="formGroupExampleInput3"/>
  </div>
  <button type="submit" class="btn btn-primary">submit</button>
		
		</form:form>
	
		<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/customer/list">Back to List</a>
		</p>
	
	</div>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>

</html>










