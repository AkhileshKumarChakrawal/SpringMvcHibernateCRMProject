<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

</head>
<body>
<form>
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
</form>
<div class="row">
    <div class="col">
      <input type="text" class="form-control" placeholder="First name">
    </div>
    <div class="col">
      <input type="text" class="form-control" placeholder="Last name">
    </div>
  </div>
  
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>