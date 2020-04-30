<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CRM-Application</title>
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<style type="text/css">
.searchbtn{
border-radius: 10px;
}
#formField{
margin-top: 40px;
}
#tableborder{
border:1px solid gray;
}
</style>
</head>
<body>
<div class="container">
<h4 class="bg-info text-light">CRM - Customer Relationship Management</h4>
<div id="formField">
<form action="search" method="get" autocomplete="off">
<table>
<tr>
<td>
 Search Customer : <input  type="text" name="name" id="exampleInputPassword1">
  </td>
  <td>
  <button type="submit" class="btn btn-info searchbtn">Search</button>
  </td>
 </tr>
 </table>
</form>
</div>
<br>
<div class="table-responsive text-center">
<table class="table table-hover table-striped" id="tableborder">
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
			<input type="button" value="Add customer" class="btn btn-info searchbtn" onclick="window.location.href='addCustomer'; return false;"/>
 </div>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>