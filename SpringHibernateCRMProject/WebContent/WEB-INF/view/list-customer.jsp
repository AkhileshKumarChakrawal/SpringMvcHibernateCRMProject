<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CRM-Application</title>
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

</head>
<body>
<div class="container-fluid">
<h1 class="text-center">Customer Relationship Management</h1>
<form action="search" method="get">
<div class="row">
<div class="col-10">
<div class="form-group">
    <input  type="text" name="name" placeholder="serach customer by name" class="form-control" id="exampleInputPassword1">
  </div>
  </div>
  <div class="col">
  <button type="submit" class="btn btn-primary">search</button>
  </div>
  </div>
</form>
<br>
<div class="table-responsive text-center">
<table class="table table-hover table-striped table-bordered">
<thead class="thead-dark">
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
				</thead>
				<!-- loop over and print our customers -->
				<c:forEach var="customer" items="${customers}">
					
						<tr>
						<td> ${customer.firstName} </td>
						<td> ${customer.lastName} </td>
						<td> ${customer.email} </td>
						
						<td>
							<!-- display the update link -->
							<a href="updateCustomer?customerId=${customer.id}">Update</a>
							|
							<a href="delete?customerId=${customer.id}" onclick="if(!(confirm('Are u want to delete?'))) return false"> delete</a>
						</td>
						
					</tr>
				
				</c:forEach>
						
			</table>
			</div>
			<input type="button" value="Add new customer" class="btn btn-primary" onclick="window.location.href='addCustomer'; return false;"/>
 </div>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>